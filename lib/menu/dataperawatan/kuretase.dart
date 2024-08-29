import 'package:flutter/material.dart';

class Kuretase extends StatelessWidget {
  const Kuretase({super.key});

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
                'Kuretase',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            // Subjudul Artikel
            const Text(
              'Pengertian',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Kuretase adalah tindakan yang dilakukan untuk menghilangkan jaringan yang mengalami peradangan pada saku gusi (kehilangan perlekatan antara gusi dan gigi).',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
             Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture10.png',
                fit: BoxFit.cover,
                height: 200,
                width: 200,
                ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mengapa dilakukan perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Kuretase dilakukan karena adanya saku gusi (kehilangan perlekatan antara gusi dengan gigi). Oleh karena itu, kuretase bertujuan untuk membentuk perlekatan jaringan ikat baru antara gusi dan gigi. Perawatan ini didahului dengan scaling yang kemudian dilanjutkan dengan kuretase.',
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
              'Jika tidak dilakukan kuretase pada gigi yang mengalami kehilangan perlekatan, peradangan akan menjalar semakin ke bawah.  Akhirnya dapat terjadi kerusakan tulang pendukung gigi dan gigi akan mengalami kegoyahan.',
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
              'Berikut merupakan gambaran prosedur kuretase:',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1.	Melakukan anestesi agar pasien tidak merasakan sakit. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2.	Pengerokan jaringan yang meradang menggunakan alat kuret ke kantong saku gusi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '3.	Dilakukan beberapa kali hingga benar-benar bersih pada jaringan yang terinfeksi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '4.	Lalu dibersihkan dengan larutan saline.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '5.	Dilakukan kontrol perdarahan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
