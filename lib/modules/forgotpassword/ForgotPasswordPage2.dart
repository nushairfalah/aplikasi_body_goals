import 'package:aplikasi_body_goals/modules/forgotpassword/ForgotPasswordPage2.dart';
import 'package:aplikasi_body_goals/modules/login/LoginPage.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage2 extends StatelessWidget{
  const ForgotPasswordPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/bg_app.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(top: 28,bottom: 28),
                child: const Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Welcome to',
                      style: TextStyle(
                        color: Color.fromRGBO(25, 176, 0, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                    Stack(
                      children: [
                        Text(
                          'Body',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2.0
                              ..color = Colors.white,
                          ),
                        ),
                        const Text(
                          'Body',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Transform.translate(
                      offset: Offset(-3.0, -18.0),
                      child: const Text(
                        'Goals!',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w800,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0.0, -18.0),
                      child: const Text(
                        'Get Fit\nFeel Great\nReach Your\nBody Goals',
                        style: TextStyle(
                          color: Color.fromRGBO(25, 176, 0, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28.0,right: 28.0,bottom: 14),
                  child: TextField(
                    style: const TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      hintStyle: const TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                      contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Set the radius here
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color.fromRGBO(25, 176, 0, 1), width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(25, 176, 0, 1), // Background color of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Set the radius here
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 5.0,bottom: 5.0),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white, // Text color
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),

    );
  }

}