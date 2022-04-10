import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
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

  final List<String> Sub = [
    'KIMETSU NO YAIBA',
    'ACCHI KOCHI',
    'DETEKTIF CONAN',
    'SPY X FAMILY',
    'KIMETSU NO YAIBA',
    'K-ON',
    'OUSAMA RANGKING',
    'TOKYO GHOUL',
    'ONE PIECE',
    'ANOTHER'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
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
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                    gambar[index],
                    height: 100,
                    width: 150,
                    fit: BoxFit.cover,

                  )),
              subtitle: Text(Sub[index], style: TextStyle(color: Colors.black87)),
            ),
          );
        },
      ),
    );
  }
}

