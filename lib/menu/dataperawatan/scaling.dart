import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Scaling extends StatelessWidget {
  const Scaling ({super.key});

  final String videoUrl1 = 'https://youtu.be/Rvygehau10w?si=Q39XFACIwLwNs108 '; // Ganti dengan URL video yang sesuai
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
                'Scaling atau pembersihan karang gigi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            // Gambar Artikel
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture5.png',
                fit: BoxFit.cover,
                height: 200,
                width: 300,
                ),
            ),
            const SizedBox(height: 10),
            // Subjudul Artikel
            const Text(
              'Pengertian',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Scaling adalah prosedur menghilangkan plak dan karang gigi.',
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
              'Scaling dilakukan untuk mencegah peradangan gusi yang dapat menyebabkan kerusakan jaringan pendukung gigi yang lebih parah sampai kehilangan gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
             Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture6.png',
                fit: BoxFit.cover,
                height: 200,
                width: 300,
                ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Bagaimana jika tidak dilakukan perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Apabila karang gigi tidak segera dibersihkan, maka akan terjadi penumpukan plak dan karang gigi yang menyebabkan peradangan gusi. Jika tetap dibiarkan, peradangan akan berkembang ke jaringan pendukung gigi. Akibatnya, gigi menjadi goyang dan lepas.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture7.png',
                fit: BoxFit.cover,
                height: 200,
                width: 300,
                ),
            ),
            const SizedBox(height: 10),
             const Text(
              'Bagaimana gambaran perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Perawatan scaling dilakukan menggunakan alat ultrasonic scaler dengan ujung yang dapat bergetar dan dapat mengeluarkan air. Alat tersebut akan digerakkan di sepanjang permukaan gigi sehingga dapat melepaskan karang gigi.',
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
