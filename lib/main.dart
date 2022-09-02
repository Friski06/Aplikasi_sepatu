//import 'dart:html';
import 'package:flutter/material.dart';
import 'dart:convert';
//import 'package:halaman_login/homepage.dart';
import 'package:http/http.dart' as http;
import 'package:halaman_login/admin.dart';
import 'package:halaman_login/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? username, password, status;

  String alert = "Siap Login";
  bool visible = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();
  final String sUrl = "http://192.168.100.3/assets/login/login.php";
  //final response = await http.get(Url);

  void loginProcess() async {
    if (_formKey.currentState!.validate()) {
      final response = await http.post(Uri.parse(sUrl), body: {
        "username": usernameInput.text,
        "password": passwordInput.text
      });

      var dataUser = json.decode(response.body);

      if (dataUser.length < 1) {
        // jika data tidak di isi
        setState(() {
          alert = "Login Tidak Berhasil";
        });
      } else {
        setState(() {
          username = dataUser[0]["username"];
          password = dataUser[0]["password"];
          status = dataUser[0]["status"];
        });

        // move the page according to user status
        if (status == "admin") {
          // use navigator push replacement so that user can not go back to login page
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => Admin(
                        username: username,
                      )));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => User(
                        username: username,
                      )));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.cyan,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(color: Colors.black87, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Selamat Datang Di Toko Sepatu Online",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 20,
            ),
            Text(alert),
            SizedBox(
              height: 20,
            ),
            Builder(builder: (context) {
              return Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: usernameInput,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Isi Username Anda";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87)),
                          prefixIcon: Icon(Icons.person, size: 40),
                          hintText: "Masukan Username",
                          hintStyle: TextStyle(color: Colors.black87),
                          labelText: "Username",
                          labelStyle: TextStyle(color: Colors.black87)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordInput,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Isi Password Anda";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87)),
                          prefixIcon: Icon(Icons.lock, size: 40),
                          hintText: "Masukan Password",
                          hintStyle: TextStyle(color: Colors.black87),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black87)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.cyan,
                      elevation: 5,
                      child: Container(
                        height: 50,
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () {
                            loginProcess();
                          },
                          child: Center(
                            child: Text(
                              "Masuk",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.cyan,
                      elevation: 5,
                      child: Container(
                        height: 50,
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () {
                            //register();
                          },
                          child: Center(
                            child: Text(
                              "Register",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
