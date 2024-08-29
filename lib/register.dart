import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart'; // Add this import for date formatting

import 'package:mysample/login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _username, _password, _notelpon, _jeniskelamin, _alamat;
  bool _agreedToTOS = false;
  DateTime? _selectedDate;
  final DateFormat _dateFormat = DateFormat('yyyy-MM-dd'); // Date format for displaying

  Future<void> _register() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final response = await http.post(
        Uri.parse('https://icoass.com/api/register.php'),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'username': _username!,
          'password': _password!,
          'notelpon': _notelpon!,
          'tanggal_lahir': _selectedDate != null ? _selectedDate!.toIso8601String() : '',
          'jeniskelamin': _jeniskelamin!,
          'alamat': _alamat ?? '',
        },
      );

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        if (jsonData['success']) {
          // Register successful, navigate to login screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        } else {
          // Register failed
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(jsonData['message'])),
          );
        }
      } else {
        // Error occurred
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error occurred')),
        );
      }
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate)
      setState(() {
        _selectedDate = pickedDate;
      });
  }

  void _launchURL() async {
    const url = 'https://icoass.com/'; // Replace with the actual URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Akun'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: 300, // Set the width of the container
              child: Form(
                key: _formKey,
                child: Column(children: [
                  SizedBox(
                    height: 70,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    onSaved: (value) => _username = value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                    obscureText: true, // Hide password input
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onSaved: (value) => _password = value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'No. Telpon',
                      labelStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Silahkan isi nomor telepon';
                      }
                      return null;
                    },
                    onSaved: (value) => _notelpon = value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      children: [
                        Radio(
                          value: 'L',
                          groupValue: _jeniskelamin,
                          onChanged: (value) {
                            setState(() {
                              _jeniskelamin = value as String?;
                            });
                          },
                        ),
                        const Text('Laki-laki'),
                        Radio(
                          value: 'P',
                          groupValue: _jeniskelamin,
                          onChanged: (value) {
                            setState(() {
                              _jeniskelamin = value as String?;
                            });
                          },
                        ),
                        const Text('Perempuan'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: GestureDetector(
                      onTap: () => _selectDate(context),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _selectedDate == null
                                  ? 'Pilih Tanggal Lahir'
                                  : _dateFormat.format(_selectedDate!),
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.calendar_today,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Alamat',
                        labelStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                      maxLines: 3, // Allow multiple lines for address input
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Silahkan isi alamat';
                        }
                        return null;
                      },
                      onSaved: (value) => _alamat = value,
                    ),
                  ),
                  CheckboxListTile(
                    title: Text("Setuju dengan Syarat & Ketentuan"),
                    value: _agreedToTOS,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _agreedToTOS = newValue ?? false;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  GestureDetector(
                    onTap: _launchURL,
                    child: const Text(
                      "Lihat S&K disini",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _agreedToTOS ? Colors.blue : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(200, 50),
                      ),
                      onPressed: _agreedToTOS ? _register : null,
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
