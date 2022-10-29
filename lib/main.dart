import 'package:flutter/material.dart';
import 'package:dusunsemilir/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dusun Semilir',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/dusun_semilir.jpg'),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Alun Eropa',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8.0),
                      Text(
                        'Open Everyday',
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text('09:00 - 20:00', style: informationTextStyle),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text('Rp 20.000', style: informationTextStyle),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Berkonsep arsitektur Eropa, dengan nuansa warnawarni seperti Venetia, Maroko, Mykonos, dan French Village membuat seaka n berada di kota kota indah khas eropa. Berfoto ria bersama, menikmati mendayung di sunga i atau bersantai menaiki tram dan kereta api yang antik di Alun Eropa ak an menjadi momen tak terlupakan.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://afandistudio.net/dusun_semilir/alun_eropa1.jpg')),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://afandistudio.net/dusun_semilir/alun_eropa2.jpg'),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://afandistudio.net/dusun_semilir/alun_eropa3.jpg'),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
