import 'package:aplikasi_body_goals/AppState.dart';
import 'package:aplikasi_body_goals/modules/bulk/trainer/EditTrainerPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrainerPage extends StatelessWidget{
  const TrainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
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
                              fontSize: 20
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 28,right: 28,bottom: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text('Mulyadi - 081364018555',
                                      style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),
                                    ),
                                    Image.asset(
                                      'assets/icon_whatsapp.png',
                                      height: 24, // Adjust the height as needed
                                      width: 24,  // Adjust the width as needed
                                    ),
                                    // Icon(Icons.message,color: Colors.white,)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 28,right: 28,bottom: 14),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text('Amier - 089639044019',
                                      style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),
                                    ),
                                    Image.asset(
                                      'assets/icon_whatsapp.png',
                                      height: 24, // Adjust the height as needed
                                      width: 24,  // Adjust the width as needed
                                    ),
                                    // Icon(Icons.message,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Visibility(
                            visible: appState.isAdmin,
                            child: InkWell(
                              onTap: ()=>{
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const EditTrainerPage()),)},
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 18.0,
                                    color: Color.fromRGBO(25, 176, 0, 1),
                                  ),
                                  Text('Edit',style: TextStyle(color: Color.fromRGBO(25, 176, 0, 1),fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
                        child: const Text('Gym',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 28,right: 28,bottom: 14),
                        child: Text('Find the nearest gym\here>>',
                          style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28,right: 28),
                        child: Image.asset('assets/maps.png'),
                      )
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