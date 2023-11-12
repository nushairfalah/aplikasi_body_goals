import 'package:flutter/material.dart';

import '../dashboard/DashboardPage.dart';

class Register2Page extends StatefulWidget {
  const Register2Page({super.key});
  @override
  State<Register2Page> createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page>{
  String selectedValue = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/bg_gym.png'),
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
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                    onTap: () => {Navigator.pop(context)},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 15,
                            )),
                        const SizedBox(width: 8.0),
                        const Text(
                          'Kembali',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    )),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                        left: 28, right: 28, top: 14, bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Gender',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 28.0, right: 28.0),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                      border: Border.all(
                        color: Color.fromRGBO(25, 176, 0, 1), // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromRGBO(25, 176, 0, 1), // Dropdown icon color
                      ),
                      value: selectedValue,
                      hint: const Text('Choose Gender'),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      isExpanded: true,
                      underline: Container(), // Remove the default underline
                      items: <String>['Male', 'Female']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: const TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                        left: 28, right: 28, top: 14, bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Height',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 28.0, right: 28.0),
                    child: TextField(
                      style:
                      TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                      decoration: InputDecoration(
                        hintText: 'Height',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(25, 176, 0, 1)),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                        left: 28, right: 28, top: 14, bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Recent Weight',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 28.0, right: 28.0),
                    child: TextField(
                      style:
                      TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                      decoration: InputDecoration(
                        hintText: 'Recent Weight',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(25, 176, 0, 1)),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                        left: 28, right: 28, top: 14, bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Goals Weight',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 28.0, right: 28.0,bottom: 14),
                    child: TextField(
                      style:
                      TextStyle(color: Color.fromRGBO(25, 176, 0, 1)),
                      decoration: InputDecoration(
                        hintText: 'Goals Weight',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(25, 176, 0, 1)),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(25, 176, 0, 1),
                      // Background color of the button
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10.0), // Set the radius here
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
                      child: Text(
                        'Register',
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
            ),
          ],
        ),
      ),
    );
  }

  }
