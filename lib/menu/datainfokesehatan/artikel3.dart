import 'package:flutter/material.dart';

class LubangTambalPage extends StatelessWidget {
  const LubangTambalPage({super.key});

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
                'Mengapa gigi berlubang perlu ditambal?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            SizedBox(height: 5),
            Text(
              'Halo sobat iCoass, Apakah sobat pernah mengalami gigi berlubang? sakit bukan? Maka dari itu, gigi yang berlubang perlu ditambal. Lalu mengapa gigi perlu ditambal?',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '1. Agar tidak sakit',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Gigi yang berlubang mengakibatkan syaraf di gigi terpapar dan menyebabkan sakit terutama saat minum dingin, panas, atau yang bersifat asam. Maka dari itu, gigi yang berlubang perlu ditutup dengan bahan tambal.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '2. Agar tidak semakin parah',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Gigi yang berlubang kecil bisa semakin besar dan dalam. Semakin dalam maka akan terasa lebih sakit. Yang awalnya hanya ngilu saat minum dingin, kemudian tidur saja terasa sakit bahkan pusing. Selain rasa sakit, gigi yang berlubang tersebut bisa sampai terjadi kematian syaraf atau nekrosis pulpa. Alhasil perawatan juga tidak hanya dilakukan perawatan tambal, namun juga dilakukan perawatan saluran akar untuk mempertahankan gigi. Apabila gigi tidak dapat dilakukan perawatan saluran akar, tindakan terakhir yaitu pencabutan gigi agar tidak terjadi infeksi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
                        SizedBox(height: 5),
            Text(
              'Jadi, apabila sobat giginya ada yang berlubang segera ditambal agar tidak semakin parah. Dan selalu menjaga kesehatan gigi dan mulut. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
