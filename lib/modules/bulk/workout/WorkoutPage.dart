import 'package:flutter/material.dart';
import 'package:aplikasi_body_goals/modules/bulk/trainer/LegWorkoutPage.dart';
import 'package:aplikasi_body_goals/modules/bulk/trainer/PullWorkoutPage.dart';
import 'package:aplikasi_body_goals/modules/bulk/trainer/PushWorkoutPage.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
          child: Padding(
            padding: const EdgeInsets.only(right: 28, left: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 28, bottom: 28),
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
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Text(
                          'Back',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 17.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Notes : ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            'Choose variants and weights\nbased on your capabilities.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PushWorkoutPage())),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(
                            top: 2.0, bottom: 2.0, left: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(25, 176, 0, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(25, 176, 0, 1),
                              width: 3.0),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Image(image: AssetImage('assets/push.png')),
                            const SizedBox(width: 8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Push',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 32),
                                ),
                                Transform.translate(
                                  offset: const Offset(0.0, -10.0),
                                  child: const Text(
                                    'Workout',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 32),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PullWorkoutPage())),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(
                            top: 2.0, bottom: 2.0, left: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(25, 176, 0, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(25, 176, 0, 1),
                              width: 3.0),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Image(image: AssetImage('assets/pull.png')),
                            const SizedBox(width: 8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Pull',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 32),
                                ),
                                Transform.translate(
                                  offset: const Offset(0.0, -10.0),
                                  child: const Text(
                                    'Workout',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 32),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LegWorkoutPage())),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(
                            top: 2.0, bottom: 2.0, left: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(25, 176, 0, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(25, 176, 0, 1),
                              width: 3.0),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Image(image: AssetImage('assets/leg.png')),
                            const SizedBox(width: 8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Leg',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 32),
                                ),
                                Transform.translate(
                                  offset: const Offset(0.0, -10.0),
                                  child: const Text(
                                    'Workout',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 32),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Info : ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Repetisi : : unending cycle of the same moves.\n\nSet : a series of exercises done continuously',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 28),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 4, top: 4),
                      margin: EdgeInsets.only(
                          top: 14, bottom: 14),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(25, 176, 0, 1),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Gym',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      ),
                    ),
                    const Text(
                      'Find the nearest gym here >>',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
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
