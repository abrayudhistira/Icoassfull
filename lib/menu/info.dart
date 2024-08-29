import 'package:flutter/material.dart';
import 'package:mysample/menu/datainfokesehatan/artikel1.dart';
import 'package:mysample/menu/datainfokesehatan/artikel2.dart';
import 'package:mysample/menu/datainfokesehatan/artikel3.dart';
import 'package:mysample/menu/datainfokesehatan/artikel4.dart';
import 'package:mysample/menu/datainfokesehatan/artikel5.dart';
import 'package:mysample/menu/datainfokesehatan/artikel6.dart';

class InfoKesehatanGigiPage extends StatelessWidget {
  const InfoKesehatanGigiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Info Kesehatan Gigi'),
      ),
      body: SingleChildScrollView(
        child: Center( // Wrap with Center widget
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    HospitalCard(
                      title: 'Mengapa perlu kontrol ke dokter gigi 6 bulan sekali?',
                      doctorCount: 'PKM KC iCoass',
                      imageUrl: 'lib/menu/datainfokesehatan/src/1.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KontrolGigi()),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    HospitalCard(
                      title: 'Gigi berlubang mengapa terasa sakit? ',
                      doctorCount: 'PKM KC iCoass',
                      imageUrl: 'lib/menu/datainfokesehatan/src/2.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InfoLubangGigi()),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    HospitalCard(
                      title: 'Mengapa gigi berlubang perlu ditambal?',
                      doctorCount: 'PKM KC iCoass',
                      imageUrl: 'lib/menu/datainfokesehatan/src/3.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LubangTambalPage()),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    HospitalCard(
                      title: 'Apa akibat gigi dicabut? ',
                      doctorCount: 'PKM KC iCoass',
                      imageUrl: 'lib/menu/datainfokesehatan/src/4.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InfoGigiCabut()),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    HospitalCard(
                      title: 'Karang gigi banyak, gimana cara menghilangkannya?',
                      doctorCount: 'PKM KC iCoass',
                      imageUrl: 'lib/menu/datainfokesehatan/src/5.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder:  (context) => KarangGigi()),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    HospitalCard(
                      title: 'Gigi berlubang bikin sakit jantung?',
                      doctorCount: 'PKM KC iCoass',
                      imageUrl: 'lib/menu/datainfokesehatan/src/6.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GigiBerlubang()),
                        );
                      },
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
          width: 500, // Set width here
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

class GeneralDoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cara Sikat Gigi Yang Benar'),
      ),
      body: Center(
        child: Text('Penjelasan tentang cara sikat gigi yang benar.'),
      ),
    );
  }
}

class PediatricsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seputar Orthopedi'),
      ),
      body: Center(
        child: Text('Penjelasan tentang orthopedi.'),
      ),
    );
  }
}
