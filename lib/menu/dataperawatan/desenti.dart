import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Desenti extends StatelessWidget {
  const Desenti({super.key});

  final String videoUrl1 = 'https://youtube.com/shorts/3R1q7IP1NLA?si=WLKNO2asOxCcAQIy'; // Ganti dengan URL video yang sesuai
  //final String videoUrl2 = 'https://youtube.com/shorts/1gZsbdprKXM?si=j0AJ2qznoQfMtbug'; // Ganti dengan URL video yang sesuai

  // Fungsi untuk membuka URL
  Future<void> _launchURL(String url) async {
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
        backgroundColor: Colors.blue,
        title: Text('Layanan Perawatan'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Desensitisasi gigi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            // Gambar Artikel
            const SizedBox(height: 10),
            // Subjudul Artikel
            const Text(
              'Pengertian',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Desensitisasi gigi merupakan prosedur perawatan yang dilakukan untuk mengatasi rasa ngilu akibat respon pulpa (syaraf gigi) yang berlebihan dengan pemberian bahan desensitisasi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            const Text(
              'Mengapa dilakukan perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Desensitisasi digunakan untuk menangani keluhan ngilu tanpa lubang, melainkan karena terbukanya tubulus dentinalis (syaraf pada gigi). Pemberian bahan ini diharapkan dapat menutup syaraf tersebut sehingga tidak terjadi ngilu. Beberapa kasus desensitisasi dilakukan pada gusi yang turun atau resesi gingiva.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture12.png',
                fit: BoxFit.cover,
                height: 150,
                width: 250,
                ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Bagaimana jika tidak dilakukan perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Apabila dalam kondisi ini tidak dilakukan desensitisasi, maka dapat menyebabkan gigi semakin ngilu dan mengganggu aktivitas.  ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
             const Text(
              'Bagaimana gambaran perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Berikut merupakan gambaran prosedur desensitisasi gigi:',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1.	Pembersihan gigi dengan brush.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2.	Mengeringkan daerah yang akan dilakukan pengaplikasian bahan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '3.	Mengaplikasikan bahan desensitisasi. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              'Video Ilustrasi',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             GestureDetector(
              onTap: () => _launchURL(videoUrl1),
              child: Container(
                color: Colors.grey[300],
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(bottom: 10),
                child: const Row(
                  children: [
                    Icon(Icons.play_arrow, color: Colors.blue),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Tonton Video Ilustrasi',
                        style: TextStyle(fontSize: 12, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
