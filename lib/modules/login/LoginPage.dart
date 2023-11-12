import 'package:aplikasi_body_goals/AppState.dart';
import 'package:aplikasi_body_goals/modules/dashboard/DashboardPage.dart';
import 'package:aplikasi_body_goals/modules/forgotpassword/ForgotPasswordPage1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../register/RegisterPage.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameTextController = TextEditingController();
    final appState = Provider.of<AppState>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28.0,right: 28.0,bottom: 14),
          child: TextField(
            controller: usernameTextController,
            style: const TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
            decoration: InputDecoration(
              hintText: 'Username',
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
        ElevatedButton(
          onPressed: () {
            if (usernameTextController.text == "admin"){
              appState.setAdminStatus(true);
            }else{
              appState.setAdminStatus(false);
            }
            Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage()));
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
              'Log In',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white, // Text color
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: GestureDetector(
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordPage1()),)},
              child: const Text('Forgot Password?', style: TextStyle(fontWeight: FontWeight.w600,color: Color.fromRGBO(25, 176, 0, 1)),)
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Haven't an account? ", style: TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),),
              GestureDetector(
                  onTap: ()=>{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()),)},
                  child: const Text('Register', style: TextStyle(fontWeight: FontWeight.w600,color: Color.fromRGBO(25, 176, 0, 1)),)
              ),
            ],
          ),
        )
      ],
    );
  }
  
}