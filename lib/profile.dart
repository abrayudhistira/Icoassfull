import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mysample/component/serviceprofil.dart';

class UserProfileScreen extends StatefulWidget {
  final String username;

  UserProfileScreen({Key? key, required this.username}) : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  late Future<UserProfile> _futureUserProfile;

  @override
  void initState() {
    super.initState();
    _futureUserProfile = fetchUserProfile();
  }

  Future<UserProfile> fetchUserProfile() async {
    final response = await http.get(Uri.parse(
        'https://icoass.com/api/profile.php?username=abra'));  // Updated to use widget.username

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON.
      return UserProfile.fromJson(jsonDecode(response.body));
    } else {
      // If the server returns an error response, throw an exception.
      throw Exception('Failed to load profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: FutureBuilder<UserProfile>(
        future: _futureUserProfile,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data available'));
          } else {
            final userProfile = snapshot.data!;
            return ListView(
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                _buildProfileBox('Username', userProfile.username),
                _buildProfileBox('Nomor Telepon', userProfile.notelpon),
                _buildProfileBox('Tanggal Lahir', userProfile.tanggalLahir),
                _buildProfileBox('Jenis Kelamin', userProfile.jeniskelamin),
                _buildProfileBox('Alamat', userProfile.alamat),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildProfileBox(String title, String content) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(content),
        ],
      ),
    );
  }
}
