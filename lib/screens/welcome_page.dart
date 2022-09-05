import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/screens/login_page.dart';
import 'package:test_app/screens/register_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: welcomeBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to the App",
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 42),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Image.asset("assets/images/interface.png",
                  height: size.height * 0.4),
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29)),
                        padding: const EdgeInsets.all(20)),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: primaryColor[200],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29)),
                        padding: const EdgeInsets.all(20)),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
