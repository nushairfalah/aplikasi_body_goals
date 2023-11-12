import 'package:aplikasi_body_goals/components/WorkoutCard.dart';
import 'package:flutter/material.dart';



class PullWorkoutPage extends StatelessWidget{
  const PullWorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: const Text('Pull Workout',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                        ),
                      ),
                    ),
                    WorkoutCard(title: 'Lat Pull Down', desc: '5 Sets x 12 Reps', children: [
                      Image.asset('assets/pull/1.png'),
                    ]),
                    WorkoutCard(title: 'T-Bar Row', desc: '4 Sets x 12 Reps', children: [
                      Image.asset('assets/pull/2.png'),
                    ]),
                    WorkoutCard(title: 'Close Grip Cable Row', desc: '5 Sets x 12 Reps', children: [
                      Image.asset('assets/pull/3.png'),
                    ]),
                    WorkoutCard(title: 'Cable Upright Row', desc: '4 Sets x 12 Reps', children: [
                      Image.asset('assets/pull/4.png'),
                    ]),
                    WorkoutCard(title: 'Bicep Curl', desc: '4 Sets x 12 Reps', children: [
                      Image.asset('assets/pull/5.png'),
                    ]),
                    const SizedBox(height: 12,),
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