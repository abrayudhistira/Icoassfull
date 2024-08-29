import 'package:flutter/material.dart';

class GigiBerlubang extends StatelessWidget {
  const GigiBerlubang({super.key});

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
                'Gigi berlubang bikin sakit jantung?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            SizedBox(height: 5),
            Text(
              'Gigi berlubang harus segera diberi tindakan, baik ditambal ataupun cabut, tergantung dari seberapa banyak kerusakan pada gigi. Menurutmu apa yang akan terjadi jika gigi berlubang tidak segera ditangani?',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Gigi berlubang itu terjadi karena ada infeksi bakteri yang menghasilkan asam di rongga mulut kita. Ketika mulut dalam kondisi asam, maka akan terjadi pelepasan mineral yang dapat merusak gigi dan terbentuklah lubang. Nah, ketika gigi berlubang tidak segera ditangani, akan terjadi infeksi lebih lanjut dan peradangan kronis. Kondisi ini dapat memengaruhi kondisi sistemik, termasuk meningkatnya risiko penyakit kardiovaskular atau penyakit jantung. Bakteri rongga mulut dapat memasuki aliran darah dan menempel pada jaringan jantung, sehingga akan terbentuk aterosklerosis (penumpukan plak di arteri) yang dapat menyebabkan penyakit jantung koroner.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
