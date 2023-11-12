
import 'package:aplikasi_body_goals/AppState.dart';
import 'package:aplikasi_body_goals/components/TrapesiumButton.dart';
import 'package:aplikasi_body_goals/modules/login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isNext = false;
  void goToLogin() {
    setState(() {
      // Update the state inside this function
      isNext = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
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
                Visibility(
                    visible: isNext,
                    child: const LoginPage())
              ],
            ),
          ),
          Visibility(
            visible: !isNext,
            child: Positioned(
              bottom: 16.0,
              right: 16.0,
              child: TrapesiumButton(
                onPressed: goToLogin,
                child: const Text('Get Start >'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
