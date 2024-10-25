import 'package:flutter/material.dart';
import 'package:login_screen/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 150),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/dark.jpg"),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WELCOME TO",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
                Text(
                  "AYNA GHOR",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 42,
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 50,
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },

                  icon: Icon(
                    Icons.double_arrow,
                    size: 20,
                    color: Colors.black,
                  ),

                  label: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
