
import 'package:aplikasi_body_goals/AppState.dart';
import 'package:aplikasi_body_goals/components/CarouselSlider.dart';
import 'package:aplikasi_body_goals/modules/home/EditArticlePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onBulkClicked;

  const HomePage({super.key, required this.onBulkClicked});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/bg_gym_2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(top: 28, bottom: 28),
                child: const Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'New Articles :', style: TextStyle(color: Colors
                            .white, fontWeight: FontWeight.w500),),
                        Visibility(
                          visible: appState.isAdmin,
                          child: InkWell(
                            onTap: ()=>{
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const EditArticlePage()),)},
                            child: Row(
                              children: [
                                const Icon(
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
                    CarouselSlider(),
                    const Text('Choose Program :', style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),),
                    InkWell(
                      onTap: () => onBulkClicked(),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(25, 176, 0, 1),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.trending_up, color: Colors.white,
                              size: 50,),
                            SizedBox(width: 8.0,),
                            Text('Gain Weight',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24
                              ),)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => onBulkClicked(),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: const Color.fromRGBO(
                              25, 176, 0, 1), width: 2.0),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.trending_up,
                              color: Color.fromRGBO(25, 176, 0, 1), size: 50,),
                            SizedBox(width: 8.0,),
                            Text('Weight Loss',
                              style: TextStyle(
                                  color: Color.fromRGBO(25, 176, 0, 1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24
                              ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}