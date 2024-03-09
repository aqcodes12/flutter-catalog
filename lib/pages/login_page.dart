import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_catalog/utils/route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool chnageButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/vector.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: " enter username", labelText: "UserName"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: " enter password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // ElevatedButton(
                  //     child: Text(
                  //       "Login",
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRouts.homeRoute);
                  //     },
                  //     style: TextButton.styleFrom(
                  //         backgroundColor: Colors.deepPurple,
                  //         minimumSize: Size(120, 50))
                  //         )
                  InkWell(
                    onTap: () async {
                      setState(() {
                        chnageButton = true;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRouts.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: chnageButton ? 50 : 120,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: chnageButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
