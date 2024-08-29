import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LokasiPage extends StatelessWidget {
  const LokasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lokasi Rumah Sakit Gigi dan Mulut'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    HospitalCard(
                      title: 'Rumah Sakit Gigi Mulut (RSGM) UMY',
                      doctorCount: 'Rumah Sakit di Yogyakarta',
                      imageUrl: 'assets/images/rsgm.jpg',
                      onTap: () async {
                        await launchUrl(Uri.parse('https://maps.app.goo.gl/kFCQzPLxJhESY9eLA'));
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HospitalCard extends StatelessWidget {
  final String title;
  final String doctorCount;
  final String imageUrl;
  final VoidCallback onTap;

  const HospitalCard({
    required this.title,
    required this.doctorCount,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imageUrl, width: double.infinity, height: 150, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      doctorCount,
                      style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
