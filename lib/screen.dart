import 'package:flutter/material.dart';
import 'route_screen/ContactUs.dart';
import 'route_screen/Gallery.dart';
import 'route_screen/Portofolio.dart';
import 'route_screen/Profile.dart';
import 'route_screen/Setting.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
          Colors.cyan,
          Colors.indigoAccent
        ]))),
      ),
      drawer: drawerPage(),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "Selamat Datang",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
        decoration: new BoxDecoration(
          image: DecorationImage(image: AssetImage('asset/image/bg_page.jpg'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class drawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.home,
              text: 'Profile',
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    ),
                  }),
          _drawerItem(
              icon: Icons.account_circle,
              text: 'Portofolio',
              onTap: () => {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Portofolio()),
                      ),
                    }
                  }),
          _drawerItem(
              icon: Icons.add_call,
              text: 'Contact Us',
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUs()),
                    ),
                  }),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              'Keterangan',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
          _drawerItem(
              icon: Icons.settings,
              text: 'Setting',
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Setting()),
                    ),
                  }),
          _drawerItem(
              icon: Icons.collections,
              text: 'Gallery',
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Gallery()),
                    ),
                  }),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
        currentAccountPicture: ClipOval(
          child: Image(image: AssetImage('asset/image/profile.png'), fit: BoxFit.cover),
        ),
        accountName: Text('DHICKY MAHESYA TEGAR SURYA PRAMANA'),
        accountEmail: Text('dhivanipramana19@gmail.com'),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.cyan,
          Colors.indigoAccent
        ])));
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
