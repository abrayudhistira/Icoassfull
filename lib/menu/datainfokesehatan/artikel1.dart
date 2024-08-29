import 'package:flutter/material.dart';

class KontrolGigi extends StatelessWidget {
  const KontrolGigi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Info Kesehatan Gigi'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Mengapa perlu kontrol ke dokter gigi 6 bulan sekali?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            SizedBox(height: 5),
            Text(
              'Menurutmu seberapa penting sih menjaga kesehatan gigi dan mulut? Dan apakah kamu tahu gimana cara menjaga kesehatan gigi dan mulut?Ada banyak cara yang dapat dilakukan untuk menjaga kesehatan gigi dan mulut, seperti rajin menyikat gigi setiap 2x sehari, mengurangi konsumsi gula, dan rutin kontrol ke dokter gigi tiap 6 bulan sekali. Kira-kira, Mengapa kita perlu rutin ke dokter gigi?',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Kunjungan rutin ke dokter gigi dapat menjadi upaya pencegahan dan deteksi dini penyakit gigi dan mulut. Dokter gigi dapat mengidentifikasi masalah gigi lebih awal, sehingga dapat memungkinkan  perawatan yang lebih murah dan sederhana. Tak hanya itu, orang yang rutin ke dokter gigi dapat meningkatkan kualitas hidupnya.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
