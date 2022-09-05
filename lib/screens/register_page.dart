import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/screens/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics:
                const BouncingScrollPhysics(parent: ClampingScrollPhysics()),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                appIcon,
                const SizedBox(height: 50),
                buildHelloField(),
                const SizedBox(height: 50),
                buildNameField(),
                const SizedBox(height: 10),
                buildEmailField(),
                const SizedBox(height: 10),
                buildPasswordField(),
                const SizedBox(height: 10),
                buildPasswordRetypeField(),
                const SizedBox(height: 10),
                buildSignUpButton(),
                const SizedBox(height: 5),
                buildLoginLinkField()
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
          'Hello!',
          style:
              GoogleFonts.bebasNeue(fontWeight: FontWeight.bold, fontSize: 54),
        ),
        const SizedBox(height: 10),
        const Text(
          'Welcome, do you want to join us?',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  buildNameField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: bgColor[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12.0)),
        child: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "Full Name"),
          ),
        ),
      ),
    );
  }

  buildEmailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: bgColor[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12.0)),
        child: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: TextField(
            decoration:
                InputDecoration(border: InputBorder.none, hintText: "Email"),
          ),
        ),
      ),
    );
  }

  buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
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
                InputDecoration(border: InputBorder.none, hintText: "Password"),
          ),
        ),
      ),
    );
  }

  buildPasswordRetypeField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: bgColor[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12.0)),
        child: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "Password Again"),
          ),
        ),
      ),
    );
  }

  buildSignUpButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            minimumSize: const Size(380.0, 15.0)),
        child: const Text("Sign Up",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        onPressed: () {},
      ),
    );
  }

  buildLoginLinkField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("are you a member?",
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextButton(
            child: const Text("Login Now",
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          )
        ],
      ),
    );
  }
}
