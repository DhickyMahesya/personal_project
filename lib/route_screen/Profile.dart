import 'dart:html';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Profile'),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
            Colors.cyan,
            Colors.indigoAccent
          ])))),
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                'asset/image/profile.png',
                width: 120,
                height: 120,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Center(
            child: Text(
              'Nama             : Dhicky Mahesya Tegar Surya Pramana'
              '\nTpt,tgl lahir    : Banyuwangi,19 Januari 2002'
              '\nJenis Kelamin    : Laki-Laki'
              '\nStatus           : Mahasiswa'
              '\nAlamat           : Dsn.Tapak Lembu RT.02 Rw.03 Kec.Sempu Banyuwangi'
              '\nE-mail              : dhivanipramana19@gmail.com'
              '\nNim              : 362055401015'
              '\nkelas            : TI 2A',
            ),
          ),
        ],
      ),
    );
  }
}
