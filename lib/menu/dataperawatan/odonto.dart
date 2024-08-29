import 'package:flutter/material.dart';

class Odonto extends StatelessWidget {
  const Odonto({super.key});

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
                'Odontektomi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            // Gambar Artikel
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture24.png',
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
              'Odontektomi adalah operasi untuk mengeluarkan gigi yang impaksi (gigi yang  terhalang untuk tumbuh). Ruang yang tidak cukup membuat gigi bungsu tidak dapat keluar secara sempurna dari gusi.',
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
              'Gigi impaksi perlu dilakukan terutama pada kasus yang menimbulkan keluhan rasa sakit, peradangan pada gusi di dekat gigi bungsu yang sedang tumbuh, gigi berlubang, dan permasalahan lainnya. Namun, untuk mencegah hal yang tidak diinginkan, gigi impaksi ini perlu dicabut. ',
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
              'Perawatan ini dilakukan untuk mencegah hal-hal yang tidak diinginkan. Gigi yang tidak tumbuh sempurna dibagian belakang membuat kesulitan untuk membersihkan gigi. Alhasil bisa menyebabkan peradangan di bagian gusi belakang sampai gigi berlubang. Selain itu, gigi tersebut dapat mendorong gigi depannya, sehingga gigi dapat bergerak kedepan. Gigi yang mendorong gigi depannya ini, juga dapat menimbulkan kerusakan gigi depannya yang sehat.  ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture25.png',
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
              'Berikut merupakan gambaran tindakan yang akan dilakukan: ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1.	Pemberian antiseptik pada area yang dicabut.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2.	Melakukan anestesi atau bius agar pasien tidak merasakan sakit saat dilakukan pencabutan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '3.	Pembukaan gusi (flap) dan pengurangan tulang.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '4.	Melakukan pencabutan atau mengeluarkan gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '5.	Pengambilan gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '6.	Mengontrol perdarahan dengan penjahitan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
