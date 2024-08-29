import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter_chat_ui/flutter_chat_ui.dart';
//import 'package:mysample/menu/dataperawatan/orto.dart';
//import 'package:flutter_chat_ui/flutter_chat_ui.dart';
//import 'package:mysample/component/constanta.dart';
import 'chat.dart';
import 'profile.dart';
import 'package:mysample/menu/lokasi.dart';
import 'package:mysample/menu/diagnosis.dart';
import 'package:mysample/menu/perawatan.dart';
import 'package:mysample/menu/info.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'package:video_player/video_player.dart';

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Text(
      'Chat',
      style: optionStyle,
    ),
    Text(
      'User Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatApp()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => UserProfileScreen(
                  username: '',
                )),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Halo, Selamat Datang di iCoass!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 2),
          //WelcomeTextContainer(),
          ImageSlider(),
          ShowDiagnosis(),
          HeaderText(), // Call the HeaderText widget here
          FeaturesContainer(), // Add the ImageSlider widget here
          ShowMoreContainer(),
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 55.0, top: 2),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Kategori',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class WelcomeTextContainer extends StatelessWidget {
  const WelcomeTextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 20.0, vertical: 5.0), // add 20px margin below
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: const TeksWelcome(),
    );
  }
}

class TeksWelcome extends StatelessWidget {
  const TeksWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Selamat Datang di iCoass!',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}

class ShowMore extends StatelessWidget {
  const ShowMore({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 335,
      height: 170,
      child: Card(
        elevation: 5,
        color: Colors.white, // Add this line to set the card color
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 20, top: 15, bottom: 5),
          child: Column(
            children: [
              Text(
                'Desensitisasi gigi',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Desensitisasi gigi merupakan prosedur perawatan yang dilakukan untuk mengatasi rasa ngilu akibat respon pulpa (syaraf gigi) yang berlebihan dengan pemberian bahan desensitisasi...',
                style: TextStyle(
                  fontSize: 11,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Show More',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowMoreContainer extends StatelessWidget {
  const ShowMoreContainer({super.key, this.page});
  final Widget? page;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25, left: 30),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const LayananPerawatanPage()),
          );
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowMore(),
          ],
        ),
      ),
    );
  }
}

class ShowDiagnosis extends StatelessWidget {
  const ShowDiagnosis({super.key, this.page});
  final Widget? page;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 150,
      child: Card(
        elevation: 5,
        color: Colors.white, // Add this line to set the card color
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 20, top: 15, bottom: 15),
          child: Column(
            children: [
              const Text(
                'Yakin Gigi dan Mulut anda sehat?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                //textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              const Opacity(
                opacity: 0.7, // adjust the opacity value to your liking
                child: Text(
                  'Yuk diagnosis sementara dari keluhan-keluhanmu!',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WebviewPage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, // background color of the button
                        borderRadius:
                            BorderRadius.circular(5), // rounded corners
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Text(
                        'Diagnosis',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // text color of the button
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowDiagnosisContainer extends StatelessWidget {
  const ShowDiagnosisContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WebviewPage()),
          );
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShowDiagnosis(),
          ],
        ),
      ),
    );
  }
}

class FeaturesContainer extends StatelessWidget {
  const FeaturesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
      padding: const EdgeInsets.all(40.0), //jarak antara button
      decoration: BoxDecoration(
        color: Colors.white, // Light blue background color
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3)),
        ],
      ),
      child: const FeaturesGrid(),
    );
  }
}

class FeaturesGrid extends StatelessWidget {
  const FeaturesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      children: const <Widget>[
        FeatureButton(
          title: 'Diagnosis Sementara',
          icon: Icons.medical_information_rounded,
          page: WebviewPage(),
        ),
        FeatureButton(
          title: 'Layanan Perawatan',
          icon: Icons.medical_services_rounded,
          page: LayananPerawatanPage(),
        ),
        FeatureButton(
          title: 'Info Kesehatan Gigi',
          icon: Icons.medical_information_rounded,
          page: InfoKesehatanGigiPage(),
        ),
        FeatureButton(
          title: 'Lokasi',
          icon: Icons.room,
          page: LokasiPage(),
        ),
      ],
    );
  }
}

class FeatureButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget page;

  const FeatureButton(
      {required this.title, required this.icon, required this.page, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.all(2.0), // Reduced margin
          child: CircleAvatar(
            radius: 25, // Smaller radius
            backgroundColor: Colors.blue,
            child: IconButton(
              icon: Icon(icon,
                  size: 25, color: Colors.white), // Smaller icon size
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;
  final List<String> _images = [
    'lib/menu/dataperawatan/src/Picture1.png',
    'lib/menu/dataperawatan/src/Picture2.png',
    'lib/menu/dataperawatan/src/Picture3.png',
    'lib/menu/dataperawatan/src/Picture4.png',
  ];
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        if (_currentIndex == _images.length - 1) {
          
          _currentIndex = 0;
        } else {
          _currentIndex = (_currentIndex + 1) % _images.length;
        }
        _pageController.animateToPage(_currentIndex,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350, // adjust the height to your needs
      padding: const EdgeInsets.all(10), // add padding
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10), // add border radius
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_images[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
