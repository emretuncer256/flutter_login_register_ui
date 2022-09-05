import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/screens/register_page.dart';
import 'package:test_app/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(parent: ClampingScrollPhysics()),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                appIcon,
                const SizedBox(height: 50),
                buildHelloField(),
                const SizedBox(height: 50),
                buildEmailField(),
                const SizedBox(height: 10),
                buildPasswordField(),
                const SizedBox(height: 10),
                buildSignInButton(),
                const SizedBox(height: 5),
                buildRegisterLinkField(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildHelloField() {
    return Column(
      children: [
        Text(
          'Hello Again!',
          style:
              GoogleFonts.bebasNeue(fontWeight: FontWeight.bold, fontSize: 54),
        ),
        const SizedBox(height: 10),
        const Text(
          'Welcome back, you\'ve been missed!',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  buildEmailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
            color: bgColor[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12.0)),
        child: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: TextField(
            decoration:
                InputDecoration(border: InputBorder.none, hintText: 'Email'),
          ),
        ),
      ),
    );
  }

  buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
            color: bgColor[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12.0)),
        child: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: TextField(
            obscureText: true,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: 'Password'),
          ),
        ),
      ),
    );
  }

  buildSignInButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            minimumSize: const Size(380.0, 15.0)),
        child: const Text("Sign In",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        onPressed: () {},
      ),
    );
  }

  buildRegisterLinkField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("not a member?",
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextButton(
            child: const Text("Register Now",
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
          )
        ],
      ),
    );
  }
}
