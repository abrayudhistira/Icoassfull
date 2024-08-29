import 'package:flutter/material.dart';

class Gtl extends StatelessWidget {
  const Gtl({super.key});
  
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
                'Gigi tiruan lengkap (GTL)',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            // Gambar Artikel
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture19.png',
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
              'Gigi tiruan lengkap (GTL) adalah suatu gigi tiruan yang menggantikan seluruh gigi. ',
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
              'Pembuatan gigi tiruan lengkap ini dilakukan pada seseorang yang sudah kehilangan semua giginya. Namun, juga perlu mempertimbangkan kondisi sistemik dan rongga mulut pasien. Persetujuan akan pembuatan gigi tiruan ini diperlukan karena mempertimbangkan waktu yang diperlukan untuk pembuatan gigi tiruan lengkap. ',
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
              '3.	Mempengaruhi fungsi bicara \n '
              'Salah satu fungsi gigi adalah untuk berbicara. Seperti huruf s, f tidak akan keluar dengan baik jika tidak menggunakan gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '4.	Penurunan tinggi wajah  \n '
              'Gigi yang hilang keseluruhan akan menjadikan tinggi wajah semakin pendek. Selain itu, air liur dapat menumpuk di bagian sudut bibir. Hal ini dapat memungkinkan seseorang mengalami peradangan pada sudut bibir atau disebut angular cheilitis. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture20.png',
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
              'Berikut merupakan gambaran pembuatan gigi tiruan lengkap: ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1.	Dilakukan Pencetakan rahang.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2.	Pengukuran-pengukuran yang dilakukan untuk menentukan tinggi dari gigi tiruan yang akan digunakan. ',
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
              '4.	Pemasangan gigi tiruan lengkap, jika masih ada yang mengganjal akan dilakukan perbaikan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '5.	Kontrol untuk mengetahui kondisi gigi tiruan dan rongga mulut pasien. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
