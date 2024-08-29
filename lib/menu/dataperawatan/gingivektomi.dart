import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GingiV extends StatelessWidget {
  const GingiV({super.key});

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Gingivektomi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),// Judul Artikel
            const SizedBox(height: 10),
            const Text(
              'Pengertian',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Gingivektomi adalah tindakan pembedahan yang dilakukan untuk mengambil jaringan gusi yang mengalami pembengkakan.',
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
              'Gingivektomi dilakukan pada gusi yang bengkak. Biasanya terjadi pada seseorang yang menggunakan behel cekat atau pengguna obat rutin imunosupresan, calcium channel blocker, dan anticonvulsant. Gingivektomi ini dilakukan dengan menghilangkan jaringan gusi yang membesar untuk mendapatkan bentuk normal gusi secara estetik dan fungsional.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
             Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture8.png',
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
              'Jika gingivektomi tidak dilakukan dalam kondisi tersebut, maka akan mengganggu kebersihan mulut dan menimbulkan bau mulut. Selain itu, gusi yang membesar dapat mengganggu estetika atau penampilan seseorang.',
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
              'Berikut merupakan gambaran prosedur gingivektomi:',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '1. Pemberian antiseptik pada area yang dilakukan gingivektomi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            const Text(
              '2.	Pengukuran kantong gusi untuk menentukan seberapa banyak jaringan yang perlu diangkat.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '3.	Melakukan anestesi agar pasien tidak merasakan sakit.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '4.	Menandai bagian gusi yang akan dilakukan gingivektomi.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '5.	Pengangkatan jaringan dan pembentukan gusi menggunakan pisau bedah.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
             const Text(
              '6.	Penutupan luka dengan bahan pelindung untuk mempercepat penyembuhan.',
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
              const Text(
                'Ilustrasi',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 5),
            Center(
              child: Image.asset(
                'lib/menu/dataperawatan/src/Picture9.png',
                fit: BoxFit.cover,
                height: 200,
                width: 200,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
