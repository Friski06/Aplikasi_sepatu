import 'package:flutter/material.dart';
import 'package:halaman_login/barang/home_screen.dart';
import 'package:halaman_login/barang2/home_screen.dart';
import 'package:halaman_login/barang3/home_screen.dart';
import 'package:halaman_login/barang4/home_screen.dart';
import 'package:halaman_login/barang5/home_screen.dart';
import 'package:halaman_login/barang6/home_screen.dart';
import 'package:halaman_login/main.dart';
import 'header.dart';

class User extends StatefulWidget {
  final String? username;

  User({this.username});
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Menu Utama..."),
      ),
      //menu bar
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Pengaturan"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text("Berlangganan"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Profil"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log Out"),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(2.5),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset("assets/images/sneakers.jpg")),
                    const Text(
                      "Snekers",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
          ),
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen2()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset("assets/images/wedges.png")),
                    const Text(
                      "Wedges",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
          ),
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen3()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset("assets/images/peep to heels.jpg")),
                    const Text(
                      "Heels",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
          ),
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen4()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset("assets/images/flatshoes.jpg")),
                    const Text(
                      "Flat Shoes",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
          ),
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen5()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child:
                            Image.asset("assets/images/ballerina flats.jpg")),
                    const Text(
                      "Balleria",
                      style: TextStyle(fontSize: 19.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
          ),
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen6()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset("assets/images/loafers.png")),
                    const Text(
                      "Loafers",
                      style: TextStyle(fontSize: 19.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10, right: 10.0, top: 5.0),
          ),
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset("assets/images/boots.jpg"),
                    ),
                    const Text(
                      "Boots",
                      style: TextStyle(fontSize: 19.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10, right: 10.0, top: 5.0),
          ),
          Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset("assets/images/dearny.jpg")),
                    const Text(
                      "Dearny",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
