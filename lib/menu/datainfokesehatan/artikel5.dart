import 'package:flutter/material.dart';

class KarangGigi extends StatelessWidget {
  const KarangGigi({super.key});

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
                'Karang gigi banyak, gimana cara menghilangkannya?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            SizedBox(height: 5),
            Text(
              'Apa kamu pernah dengar tentang karang gigi? Tahu gak kamu bagaimana karang gigi bisa terbentuk?',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Karang gigi berasal dari plak yang ketika tidak dibersihkan secara teratur dengan penyikatan akan menumpuk dan mengeras. Nah kalo sudah terbentuk karang gigi, maka akan sulit dibersihkan, gosok gigi saja tidak cukup untuk menghilangkannya. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Terus gimana dong cara menghilangkan karang gigi?',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              'Karang gigi itu tidak bisa dihilangkan hanya dengan gosok gigi biasa atau menggunakan benang gigi saja. Untuk membersihkan karang gigi diperlukan bantuan dokter gigi untuk dilakukan scaling menggunakan alat scaler. Rutin melakukan scaling juga dapat membantu mencegah peradangan gusi dan menjaga kesehatan gigi mulut secara keseluruhan. Oleh karena itu, kalian wajib ya untuk rutin scaling ke dokter gigi! ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
