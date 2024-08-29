import 'package:flutter/material.dart';
import 'package:mysample/menu/dataperawatan/cabut.dart';
import 'package:mysample/menu/dataperawatan/gtc.dart';
import 'package:mysample/menu/dataperawatan/desenti.dart';
import 'package:mysample/menu/dataperawatan/fissure.dart';
import 'package:mysample/menu/dataperawatan/gingivektomi.dart';
import 'package:mysample/menu/dataperawatan/gtl.dart';
import 'package:mysample/menu/dataperawatan/kuretase.dart';
import 'package:mysample/menu/dataperawatan/occlu.dart';
import 'package:mysample/menu/dataperawatan/odonto.dart';
import 'package:mysample/menu/dataperawatan/orto.dart';
import 'package:mysample/menu/dataperawatan/perawatanakartunggal.dart';
import 'package:mysample/menu/dataperawatan/pulpcapping.dart';
import 'package:mysample/menu/dataperawatan/scaling.dart';
import 'package:mysample/menu/dataperawatan/space.dart';
import 'package:mysample/menu/dataperawatan/splinting.dart';
import 'package:mysample/menu/dataperawatan/taf.dart';
import 'package:mysample/menu/dataperawatan/tiruan.dart';
import 'package:mysample/menu/dataperawatan/tumpat.dart';

class LayananPerawatanPage extends StatelessWidget {
  const LayananPerawatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Layanan Perawatan'),
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          shrinkWrap: true, 
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/1.png',
              label: 'Perawatan Saluran Akar',
              page: SaluranAkarTunggal(),
            ),
           GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/2.png',
             label: 'Tambal Gigi',
              page: Tumpat(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/3.png',
              label: 'Pulp Capping',
              page: PulpCap(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/4.png',
              label: 'Scaling',
              page: Scaling(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/5.png',
              label: 'Gingivektomi',
              page: GingiV(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/6.png',
              label: 'Kuretase',
              page: Kuretase(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/7.png',
              label: 'Splinting',
              page: Splinting(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/8.png',
              label: 'Desensitisasi gigi',
              page: Desenti(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/9.png',
              label: 'Penyesuaian Gigitan',
              page: Occlus(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/10.png',
              label: 'Aplikasi Fluor',
              page: Taf(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/sealant.png',
              label: 'Fissure Sealant',
              page: Fissure(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/12.png',
              label: 'Gigi Tiruan Sebagian Lepasan',
              page: Tiruan(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/13.png',
              label: 'Gigi Tiruan Cekat',
              page: Gtc(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/14.png',
              label: 'Gigi Tiruan Lengkap',
              page: Gtl(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/15.png',
              label: 'Pencabutan Gigi',
              page: Cabut(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/16.png',
              label: 'Behel Lepasan',
              page: Orto(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/17.png',
              label: 'Space Maintainer',
              page: Space(),
            ),
            GridItem(
              imagePath: 'lib/menu/dataperawatan/icon/18.png',
              label: 'Odontektomi',
              page: Odonto(),
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final Widget? page;

  GridItem({required this.imagePath, required this.label, this.page});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 1.0),
      elevation: 5, // add elevation for shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page!),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 70,
              ),
              SizedBox(height: 10),
              Flexible( // <--- Add Flexible widget here
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
