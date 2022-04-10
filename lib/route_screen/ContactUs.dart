import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Contact Us'),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
            Colors.cyan,
            Colors.indigoAccent
          ])))),
      body: Form(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                "CONTACT US",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.indigoAccent, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 40.0),
              child: TextFormField(
                decoration: new InputDecoration(
                  hintText: 'Masukkan Nama Anda',
                  labelText: 'Nama',
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                decoration: new InputDecoration(
                  hintText: 'Masukan Email Anda',
                  labelText: 'E-Mail',
                  icon: Icon(Icons.alternate_email),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                decoration: new InputDecoration(
                  hintText: 'Masukan nomer telepon anda',
                  labelText: 'Phone Number',
                  icon: Icon(Icons.add_call),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                maxLength: 400,
                decoration: new InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 50),
                  hintText: 'Silahkan masuhkan pesan anda',
                  labelText: 'Message',
                  icon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: RaisedButton(
                child: Text(
                  'Send',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: Colors.cyan,
                onPressed: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
