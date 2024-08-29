import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mysample/component/component.dart';
import 'package:mysample/component/constanta.dart';
import 'package:mysample/register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _username, _password;

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final response = await http.post(
        Uri.parse('https://icoass.com/api/login.php'),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'username': _username,
          'password': _password,
        },
      );

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        if (jsonData['success']) {
          // Login successful, navigate to home screen
          Navigator.pushReplacementNamed(context, '/home');
        } else {
          // Invalid username or password
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(jsonData['message'])),
          );
        }
      } else {
        // Error occurred
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Error occurred')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 150),  // Added space above the logo
                Image.asset(
                  'assets/images/logo.png',
                  height: 100,  // Reduced height
                  width: 90,    // Reduced width
                ),
                const Text(
                  'Welcome to iCoass',
                  style: TextStyle(
                    fontSize: 18, // Reduced font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                CustomTextField(
                  textField: TextField(
                      onChanged: (value) {
                        _username = value;
                      },
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      decoration:
                          kTextInputDecoration.copyWith(hintText: 'Username')),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  textField: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      _password = value;
                    },
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    decoration:
                        kTextInputDecoration.copyWith(hintText: 'Password'),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _login,
                  child: const Text('Login'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: const Text('Belum mempunyai akun? Daftar disini!'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
