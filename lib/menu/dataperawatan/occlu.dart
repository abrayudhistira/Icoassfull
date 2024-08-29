import 'package:flutter/material.dart';

class Occlus extends StatelessWidget {
  const Occlus ({super.key});

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
                'Occlusal Adjustment / Penyesuaian Oklusi (gigitan)',
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
              'Occlusal Adjustment merupakan prosedur yang dilakukan pada gigi dengan trauma oklusi atau trauma saat kontak gigi rahang atas dan rahang bawah. ',
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
              'Occlusal Adjustment dilakukan untuk memperbaiki kontak oklusal/ gigi rahang atas dan rahang bawah yang tidak normal sehingga bisa didapatkan fungsi pengunyahan yang optimal. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
             Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture13.png',
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
              'Jika occlusal adjustment tidak dilakukan pada gigi yang mengalami trauma oklusi, dapat menyebabkan ketidaknyamanan saat mengunyah. Hal ini juga dapat menyebabkan gangguan sendi pengunyahan. ',
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
              'Berikut merupakan gambaran prosedur occlusal adjustment:',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          const SizedBox(height: 5),
            const Text(
              '1.	Penggunaan kertas artikulator untuk mengecek kontak gigitan. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          const SizedBox(height: 5),
            const Text(
              '2.	Mengurangi/memperbaiki kontak gigitan dengan bur.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          const SizedBox(height: 5),
             const Text(
              '3.	Pengecekan kembali dengan kertas artikulasi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
           const SizedBox(height: 5),
             const Text(
              '4.	Pengecekan kembali dengan kertas artikulasi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          const SizedBox(height: 5),
             const Text(
              '5.	Prosedur diulang hingga kontak oklusal yang diinginkan tercapai. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          const SizedBox(height: 5),
             const Text(
              '6.	Penghalusan dan menghilangkan tepi gigi yang kasar. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
