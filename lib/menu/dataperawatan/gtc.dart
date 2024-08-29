import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Gtc extends StatelessWidget {
  const Gtc({super.key});

  final String videoUrl1 = 'https://youtu.be/upp6guRXe5M?si=0s-OaS4TuUDRjYXt'; // Ganti dengan URL video yang sesuai
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
                'Gigi Tiruan Cekat (GTC)/ Gigi Tiruan Jembatan',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            // Gambar Artikel
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture18.png',
                fit: BoxFit.cover,
                height: 200,
                width: 330,
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
              'Gigi Tiruan Cekat adalah suatu gigi tiruan yang dapat menggantikan gigi tanggal sebagian namun tidak dapat dilepas pasang oleh pasien dan hanya bisa dilepas dokter gigi.',
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
              'Perawatan ini dilakukan untuk seseorang yang sudah kehilangan satu atau beberapa gigi. Gigi tiruan ini memiliki estetika yang lebih baik dari pada gigi tiruan sebagian lepasan. Namun, dalam pembuatan gigi tiruan cekat ini memerlukan pengurangan gigi sehat sebagai pegangan. ',
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
              'Gigi yang hilang dan tidak dibuatkan gigi tiruan akan mengpengaruhi : ',
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
              'Perawatan ini akan membutuhkan beberapa kali kunjungan. Berikut merupakan gambaran pembuatan gigi tiruan cekat: ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1.	Pencetakan gigi',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2.	Pengurangan gigi dan pencetakan gigi lagi',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '3.	Pembuatan gigi tiruan sementara ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '4.	Mendesain gigi tiruan cekat ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '5.	Proses pembuatan gigi tiruan di lab gigi ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '6.	Pemasangan gigi tiruan cekat',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '7.	Kontrol setelah pemasangan gigi tiruan cekat',
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
