import 'package:flutter/material.dart';

class Orto extends StatelessWidget {
  const Orto({super.key});

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
                'Ortodontik lepasan/ Behel lepasan',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            // Gambar Artikel
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture22.png',
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
              'Ortodontik lepasan/ Behel lepasan adalah alat ortho yang dapat dilepas pasang sendiri oleh pasien. ',
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
              'Behel lepasan dapat digunakan untuk memperbaiki posisi gigi dengan kasus-kasus berjejal ringan. Setelah selesai perawatan behel cekat, perawatan ini juga dapat digunakan untuk menjaga posisi gigi pada tempatnya. ',
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
              'Seseorang yang memiliki kondisi gigi berjejal ringan dan tidak dilakukan perawatan behel lepasan maka dapat menyebabkan penumpukan sisa makanan di sela-sela gigi. Penumpukan ini dapat menyebabkan seseorang sulit untuk membersihkan giginya. Hal ini dapat meningkatkan risiko untuk terjadinya penumpukan karang gigi dan gigi berlubang. ',
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
              'Berikut merupakan gambaran perawatan yang akan dilakukan: ',
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
              '2.	Pengukuran-pengukuran untuk mempertimbangkan rencana perawatan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '3.	Pembuatan desain behel lepasan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '4.	Proses pembuatan behel lepasan di lab gigi. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '5.	Pemasangan behel lepasan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '6.	Kontrol 1 minggu 1 kali. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
