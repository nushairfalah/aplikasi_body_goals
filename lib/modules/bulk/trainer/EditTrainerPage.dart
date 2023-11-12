import 'package:aplikasi_body_goals/components/AdminTextField.dart';
import 'package:flutter/material.dart';

class EditTrainerPage extends StatelessWidget{
  const EditTrainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/bg_bulk.png'),
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
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left:12,right:12,bottom: 4,top: 4),
                        margin: EdgeInsets.only(top: 14,bottom: 14),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(25, 176, 0, 1),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            )
                        ),
                        child: const Text('Consultant & Contact Trainers: ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                          ),
                        ),
                      ),
                      const Text('Trainer 1: ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                      
                      AdminTextField(label: "Nama Trainer", hint: "",isImage: false,),
                      AdminTextField(label: "Link Contact", hint: "wa.me/628",isImage: false,),
                      const Text('Trainer 2: ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),

                      AdminTextField(label: "Nama Trainer", hint: "",isImage: false,),
                      AdminTextField(label: "Link Contact", hint: "wa.me/628",isImage: false,),
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
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}