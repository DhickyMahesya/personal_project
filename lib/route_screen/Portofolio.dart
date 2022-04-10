import 'package:flutter/material.dart';

class Portofolio extends StatelessWidget {

  final List<String> gambar = [
    'asset/image/kimetsu.jpg',
    'asset/image/kocchi.jpg',
    'asset/image/conan.jpg',
    'asset/image/spy.jpg',
    'asset/image/lie.jpg',
    'asset/image/KON.jpg',
    'asset/image/bojji.jpg',
    'asset/image/ghoul.jpg',
    'asset/image/one.jpg',
    'asset/image/Another.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio'),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.cyan,
                        Colors.indigoAccent
                      ]
                  ))
          )
      ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(gambar.length, (index) {
            return Card(
              child: Image.asset(
                gambar[index],
                fit: BoxFit.cover,
              ),
            );
          },),
        )
    );
  }
}

