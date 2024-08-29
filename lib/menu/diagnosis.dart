import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebviewPage extends StatelessWidget {
  const WebviewPage({Key? key}) : super(key: key);

  Future<void> _launchURL() async {
    const url = 'https://react.icoass.com/';
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
        title: const Text("Diagnosis"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: const Text("Diagnosis"),
        ),
      ),
    );
  }
}
