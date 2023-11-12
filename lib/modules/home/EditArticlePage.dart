import 'package:aplikasi_body_goals/components/AdminTextField.dart';
import 'package:flutter/material.dart';

class EditArticlePage extends StatelessWidget{
  const EditArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/bg_gym.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 28,left: 28),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 28,bottom: 28),
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
                            'Back',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Article 1: ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),

                    AdminTextField(label: "Heading", hint: "",isImage: false,),
                    AdminTextField(label: "Link", hint: "",isImage: false,),
                    AdminTextField(label: "Image", hint: "",isImage: true,),

                    SizedBox(height: 18,),

                    const Text('Article 2: ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),

                    AdminTextField(label: "Heading", hint: "",isImage: false,),
                    AdminTextField(label: "Link", hint: "",isImage: false,),
                    AdminTextField(label: "Image", hint: "",isImage: true,),

                    SizedBox(height: 18,),

                    const Text('Article 3: ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),

                    AdminTextField(label: "Heading", hint: "",isImage: false,),
                    AdminTextField(label: "Link", hint: "",isImage: false,),
                    AdminTextField(label: "Image", hint: "",isImage: true,),

                    SizedBox(height: 18,),

                    const Text('Article 4: ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),

                    AdminTextField(label: "Heading", hint: "",isImage: false,),
                    AdminTextField(label: "Link", hint: "",isImage: false,),
                    AdminTextField(label: "Image", hint: "",isImage: true,),

                    SizedBox(height: 18,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: ()=>{},
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
                            "Save",
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black, // Text color
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}