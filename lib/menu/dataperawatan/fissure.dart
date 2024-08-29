import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Fissure extends StatelessWidget {
  const Fissure({super.key});

  final String videoUrl1 = 'https://youtu.be/nxBsm6kqaz4?si=pFG8td6MotMpf87_'; // Ganti dengan URL video yang sesuai
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
                'Fissure Sealant ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            const Text(
              'Pengertian',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Fissure sealant adalah prosedur pemberian bahan tumpat (sealants) pada permukaan kunyah gigi untuk mengisi bagian yang memiliki  celah cekung dalam sehingga dapat mencegah terjadinya gigi berlubang.',
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
              'Fissure sealant dilakukan pada gigi yang memiliki cekung dalam sehingga berpotensi tinggi untuk terjadi gigi berlubang. Maka dari itu, bahan tumpat diperlukan untuk menutup cekungan tersebut agar mencegah masuknya makanan dan bakteri yang dapat menyebabkan gigi berlubang. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture14.png',
                fit: BoxFit.cover,
                height: 200,
                width: 300,
                ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Gigi dengan cekungan yang dalam.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            const Text(
              'Bagaimana jika tidak dilakukan perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Gigi dengan cekung dalam lebih rentan terhadap menempelnya sisa makanan yang dapat menyebabkan gigi berlubang. Disamping itu, cekungan tersebut sulit dijangkau oleh sikat gigi sehingga akan menjadi tempat yang mudah bagi bakteri untuk berkembang.',
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
              'Berikut merupakan gambaran prosedur fissure sealant:',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1.	Pembersihan gigi dari sisa makanan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2.	Gigi dikeringkan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '3.	Pemberian bahan sealant atau tumpat. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '4.	Dilakukan penghalusan menggunakan bur.   ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture15.png',
                fit: BoxFit.cover,
                height: 350,
                width: 170,
                ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture16.png',
                fit: BoxFit.cover,
                height: 200,
                width: 350,
                ),
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
