import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
            "Welcome",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: " enter password", labelText: "Password"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    print("hey aq");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
