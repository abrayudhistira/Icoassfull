import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Tiruan extends StatelessWidget {
  const Tiruan({super.key});

  final String videoUrl1 = 'https://youtu.be/NgDI4-CbIdY?si=sFTn5_z0kBTzISE9'; // Ganti dengan URL video yang sesuai
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
                'Gigi Tiruan Sebagian Lepasan (GTSL)',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            // Gambar Artikel
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture17.png',
                fit: BoxFit.cover,
                height: 300,
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
              'Gigi Tiruan Sebagian Lepasan adalah suatu gigi tiruan yang menggantikan daerah gigi hilang sebagian dan dapat dilepas pasang oleh pasien.',
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
              'Pembuatan gigi tiruan sebagian lepasan dilakukan apabila terdapat kehilangan satu atau beberapa gigi. Gigi yang berlubang atau terdapat karang gigi akan dilakukan perawatan terlebih dahulu. ',
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
              'Gigi yang hilang dan tidak dibuatkan gigi tiruan akan mempengaruhi : ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1.	Kehilangan fungsi pengunyahan\n '
              'Fungsi gigi yaitu untuk memotong dan mengunyah makanan. Apabila terdapat gigi yang hilang akan menyebabkan terganggunya fungsi tersebut. Hal ini, bisa saja akan mempengaruhi pencernaan karena gigi tidak dapat mengunyah dengan baik. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2.	Mempengaruhi estetika \n '
              'Gigi yang dicabut atau hilang terutama berada di bagian depan akan mempengaruhi estetika. Terkadang orang akan malu dan akan mempengaruhi psikologi seseorang. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '3.	Perseran gigi \n '
              'Gigi yang dicabut akan meninggalkan ruangan kosong. Gigi disekitarnya dapat bergeser ke bagian yang kosong. Ini akan menimbulkan permasalahan baru seperti penumpukan karang gigi, peradangan gusi karena munculnya celah akibat pergeseran gigi tersebut. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '4.	Mempengaruhi fungsi bicara \n '
              'Salah satu fungsi gigi adalah untuk berbicara. Seperti huruf s, f tidak akan keluar dengan baik jika tidak menggunakan gigi.',
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
              'Perawatan ini akan membutuhkan beberapa kali kunjungan. Berikut merupakan gambaran pembuatan gigi tiruan lepasan: ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1.	Pencetakan gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2.	Pembuatan desain gigi tiruan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '3.	Proses pembuatan gigi tiruan di lab gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '4.	Pemasangan gigi tiruan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '5.	Kontrol setelah pemasangan gigi tiruan.',
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
