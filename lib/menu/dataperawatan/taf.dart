import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Taf extends StatelessWidget {
  const Taf({super.key});

  final String videoUrl1 = 'https://www.youtube.com/watch?feature=shared&v=BOifhZEyobI'; // Ganti dengan URL video yang sesuai
  //final String videoUrl2 = 'https://youtube.com/shorts/1gZsbdprKXM?si=j0AJ2qznoQfMtbug'; // Ganti dengan URL video yang sesuai

  // Fungsi untuk membuka URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Layanan Perawatan'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Topical Application Fluor (TAF)',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            SizedBox(height: 10),
            // Subjudul Artikel
            Text(
              'Pengertian',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Topical application fluor adalah prosedur pemberian fluor pada  permukaan gigi untuk meningkatkan ketahanan gigi terhadap gigi berlubang.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              'Mengapa dilakukan perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'TAF dilakukan untuk menguatkan email gigi atau lapisan terluar gigi serta meningkatkan kandungan mineral pada gigi. Pemberian TAF ini dilakukan untuk anak-anak yang tidak memiliki gigi berlubang sehingga berfungsi untuk mencegah gigi berlubang.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              'Bagaimana jika tidak dilakukan perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Email gigi atau lapisan terluar gigi yang tidak diberi fluor, akan lebih rentan untuk terjadi gigi berlubang. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
             Text(
              'Bagaimana gambaran perawatan ini?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'BGambaran topical application fluor dilakukan dengan prosedur berikut: ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '1.	Pembersihan gigi dari kotoran dan  sisa makanan. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
            Text(
              '2.	Gigi akan dikeringkan dan diberi kapas agar air ludah tidak mengenai gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
             Text(
              '3.	Pemberian fluor pada gigi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
             Text(
              '4.	Pasien tidak dibolehkan makan atau minum dalam 1 jam kedepan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5),
             Text(
              '5.	Pemberian fluor dilakukan dengan jarak minimal 1 minggu setelah perawatan aplikasi fluor. Pengulangan aplikasi dapat diulang setelah 3 bulan. ',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
