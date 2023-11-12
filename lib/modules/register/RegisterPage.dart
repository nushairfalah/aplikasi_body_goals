
import 'package:flutter/material.dart';

import 'Register2Page.dart';

class RegisterPage extends StatelessWidget{
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Register',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: Color.fromRGBO(25, 176, 0, 1)),),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,right: 28.0,top: 14,bottom: 14),
                    child: TextField(
                      style: const TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                      decoration: InputDecoration(
                        hintText: 'Name',
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
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,right: 28.0,bottom: 14),
                    child: TextField(
                      style: const TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                      decoration: InputDecoration(
                        hintText: 'E-Mail',
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
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,right: 28.0,bottom: 14),
                    child: TextField(
                      style: const TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
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
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,right: 28.0,bottom: 14),
                    child: TextField(
                      style: const TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                      decoration: InputDecoration(
                        hintText: 'Password',
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
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,right: 28.0,bottom: 14),
                    child: TextField(
                      style: const TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Register2Page()));
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
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Have an account? ', style: TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),),
                        GestureDetector(
                            onTap: ()=>{Navigator.pop(context)},
                            child: const Text('Log In', style: TextStyle(fontWeight: FontWeight.w600,color: Color.fromRGBO(25, 176, 0, 1)),)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}