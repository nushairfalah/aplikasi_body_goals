import 'package:aplikasi_body_goals/modules/profile/ChangePasswordPage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEdit = false;

  void goEdit() {
    setState(() {
      // Update the state inside this function
      isEdit = !isEdit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
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
              Visibility(
                visible: isEdit,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                        onTap: goEdit,
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
                              'Back',
                              style: TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ],
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, top: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Full\nName',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 24),
                        ),
                        const SizedBox(width: 8),
                        Visibility(
                          visible: isEdit,
                          child: GestureDetector(
                            onTap: () => {},
                            child: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(25, 176, 0, 1),
                            ),),)
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'E-mail',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'asdfghjkl@gmail.com',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                        const SizedBox(width: 8),
                        Visibility(
                          visible: isEdit,
                          child: GestureDetector(
                            onTap: () => {},
                            child: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(25, 176, 0, 1),
                            ),),)
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Phone Number',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '0123456789',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                        const SizedBox(width: 8),
                        Visibility(
                          visible: isEdit,
                          child: GestureDetector(
                            onTap: () => {},
                            child: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(25, 176, 0, 1),
                            ),),)
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Gender',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Male',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                        const SizedBox(width: 8),
                        Visibility(
                          visible: isEdit,
                          child: GestureDetector(
                            onTap: () => {},
                            child: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(25, 176, 0, 1),
                            ),),)
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Height',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '100cm',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                        const SizedBox(width: 8),
                        Visibility(
                          visible: isEdit,
                          child: GestureDetector(
                            onTap: () => {},
                            child: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(25, 176, 0, 1),
                            ),),)
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Goals Weight',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '99kg',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                        const SizedBox(width: 8),
                        Visibility(
                            visible: isEdit,
                            child: GestureDetector(
                                onTap: () => {},
                                child: const Icon(
                                  Icons.edit,
                                  color: Color.fromRGBO(25, 176, 0, 1),
                                ),),)
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: goEdit,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(25, 176, 0, 1),
                        // Background color of the button
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Set the radius here
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          isEdit ? 'Finish' : 'Edit Profile',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black, // Text color
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangePasswordPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        // Background color of the button
                        side: const BorderSide(
                            color: Color.fromRGBO(25, 176, 0, 1)),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Set the radius here
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(25, 176, 0, 1), // Text color
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
