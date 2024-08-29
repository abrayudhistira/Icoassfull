import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Tambahkan dependency ini pada pubspec.yaml

class SaluranAkarTunggal extends StatelessWidget {
  const SaluranAkarTunggal({super.key});

  // URL video ilustrasi
  final String videoUrl1 = 'https://youtube.com/shorts/14z8m0lnUog?si=kWsEC8z32eKsDol5'; // Ganti dengan URL video yang sesuai
  final String videoUrl2 = 'https://youtube.com/shorts/3gl_8MOfkrE?si=hl5NNbyhVTQ_1bPq'; // Ganti dengan URL video yang sesuai

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
                'Perawatan Saluran Akar Tunggal atau Gigi Depan',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            // Gambar Artikel
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture1.png',
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
              'Perawatan saluran akar adalah prosedur perawatan yang dilakukan untuk membersihkan saluran akar gigi yang terinfeksi',
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
              'Perawatan saluran akar dilakukan untuk menghilangkan infeksi bakteri di saluran akar sehingga gigi dapat dipertahankan. Perawatan ini dilakukan pada gigi yang nyeri tiba-tiba dan menetap. Selain itu, gigi yang sarafnya sudah mati juga dapat dilakukan perawatan saluran akar dengan pertimbangan tertentu.',
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
              'Apabila tidak dilakukan perawatan pada kondisi ini, maka infeksi dapat menyebar ke jaringan sekitarnya bahkan membentuk abses atau nanah.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Image.asset(
              'lib/menu/dataperawatan/src/Picture2.png',
              fit: BoxFit.cover,
              height: 145,
              width: 500,
            ),
            const SizedBox(height: 10),
            const Text(
              'Selain itu, infeksi yang semakin parah dapat menyebabkan gigi harus dicabut. Akibat dari pencabutan gigi dapat mempengaruhi kemampuan mengunyah, berbicara, dan estetika wajah.',
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
              'Perawatan ini dilakukan dengan beberapa kali kunjungan. Berikut merupakan gambaran prosedur perawatan saluran akar :',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1. Pembukaan saluran akar dengan cara mengebur gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2. Syaraf gigi dimatikan atau devitalisasi pulpa.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '3. Pembersihan saluran akar yang terinfeksi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '4. Pengisian pada saluran akar dengan bahan gutta percha agar tidak terjadi infeksi ulang.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '5. Menutup lubang dengan tambalan permanen yang estetis atau sewarna dengan gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            const Text(
              'Video Ilustrasi',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Container Video 1
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
                        'Tonton Video Ilustrasi 1',
                        style: TextStyle(fontSize: 12, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container Video 2
            GestureDetector(
              onTap: () => _launchURL(videoUrl2),
              child: Container(
                color: Colors.grey[300],
                padding: const EdgeInsets.all(8.0),
                child: const Row(
                  children: [
                    Icon(Icons.play_arrow, color: Colors.blue),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Tonton Video Ilustrasi 2',
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
