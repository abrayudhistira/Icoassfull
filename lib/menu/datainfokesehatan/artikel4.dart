import 'package:flutter/material.dart';

class InfoGigiCabut extends StatelessWidget {
  const InfoGigiCabut({super.key});

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
                'Apa akibat gigi dicabut?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            SizedBox(height: 5),
            Text(
              'Gigi yang dilakukan pencabutan karena gigi berlubang, atau karena alasan lain memiliki dampak setelahnya. Lalu apa dampaknya ?',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '1. Kehilangan fungsi pengunyahan ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Fungsi gigi yaitu untuk memotong dan mengunyah makanan. Apabila terdapat gigi yang hilang akan menyebabkan terganggunya fungsi tersebut. Hal ini, bisa saja akan mempengaruhi pencernaan karena gigi tidak dapat mengunyah dengan baik.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '2. Mempengaruhi estetika ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Gigi yang dicabut atau hilang terutama berada di bagian depan akan mempengaruhi estetika. Terkadang orang akan malu dan akan mempengaruhi psikologi seseorang.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '3. Perseran gigi',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Gigi yang dicabut akan meninggalkan ruangan kosong. Gigi disekitarnya dapat bergeser ke bagian yang kosong. Ini akan menimbulkan permasalahan baru seperti penumpukan karang gigi, peradangan gusi karena munculnya celah akibat pergeseran gigi tersebut. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '3. Mempengaruhi fungsi bicara ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Salah satu fungsi gigi adalah untuk berbicara. Seperti huruf s, f tidak akan keluar dengan baik jika tidak menggunakan gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Lalu bagaimana solusinya?',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Gigi tiruan dapat mengembalikan fungsi gigi yang hilang. Gigi tiruan ini terdapat beberapa jenis tergantung banyaknya gigi yang hilang. Maka dari itu, perlu dibuatkan gigi tiruan apabila terjadi kehilangan gigi agar tidak menimbulkan permasalah baru di rongga mulut.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
