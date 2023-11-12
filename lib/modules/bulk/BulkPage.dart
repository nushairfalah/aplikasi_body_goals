import 'package:aplikasi_body_goals/modules/bulk/diet/DietPage.dart';
import 'package:aplikasi_body_goals/modules/bulk/review/ReviewPage.dart';
import 'package:aplikasi_body_goals/modules/bulk/trainer/TrainerPage.dart';
import 'package:aplikasi_body_goals/modules/bulk/workout/WorkoutPage.dart';
import 'package:flutter/material.dart';

class BulkPage extends StatelessWidget{
  const BulkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/bg_bulk.png'),
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
                padding: const EdgeInsets.only(left: 28.0,right: 28.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Feature:', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                    InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const WorkoutPage())),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(top: 2.0,bottom: 2.0,left: 8),
                        decoration:  BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color:const Color.fromRGBO(25, 176, 0, 1),width: 3.0 ),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(image: AssetImage('assets/icon_bulk_barbell.png'),width: 50,),
                            const SizedBox(width: 8.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Workout',
                                  style: TextStyle(
                                      color: Color.fromRGBO(25, 176, 0, 1),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 32
                                  ),),
                                Transform.translate(
                                  offset: const Offset(0.0, -10.0),
                                  child: const Text('Routine',
                                    style: TextStyle(
                                        color: Color.fromRGBO(25, 176, 0, 1),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 32
                                    ),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const DietPage())),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(top: 2.0,bottom: 2.0,left: 8),
                        decoration:  BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color:const Color.fromRGBO(25, 176, 0, 1),width: 3.0 ),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(image: AssetImage('assets/icon_bulk_eat.png'),width: 50,),
                            SizedBox(width: 8.0,),
                            Text('Nutrition',
                              style: TextStyle(
                                  color: Color.fromRGBO(25, 176, 0, 1),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 32
                              ),)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const TrainerPage())),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(top: 2.0,bottom: 2.0,left: 8),
                        decoration:  BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color:const Color.fromRGBO(25, 176, 0, 1),width: 3.0 ),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Image(image: AssetImage('assets/icon_bulk_question.png'),width: 50,),
                            const SizedBox(width: 8.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Ask',
                                  style: TextStyle(
                                      color: Color.fromRGBO(25, 176, 0, 1),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 32
                                  ),),
                                Transform.translate(
                                  offset: const Offset(0.0, -10.0),
                                  child: const Text('Trainer',
                                    style: TextStyle(
                                        color: Color.fromRGBO(25, 176, 0, 1),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 32
                                    ),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const ReviewPage())),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18,bottom: 24),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(top: 10.0,bottom: 10.0,left: 8),
                        decoration:  BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color:const Color.fromRGBO(25, 176, 0, 1),width: 3.0 ),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(image: AssetImage('assets/icon_bulk_review.png'),width: 50,),
                            SizedBox(width: 8.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Review',
                                  style: TextStyle(
                                      color: Color.fromRGBO(25, 176, 0, 1),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 32
                                  ),),

                              ],
                            )
                          ],
                        ),
                      ),
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