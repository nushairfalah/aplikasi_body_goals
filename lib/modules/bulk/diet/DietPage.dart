import 'package:aplikasi_body_goals/AppState.dart';
import 'package:aplikasi_body_goals/modules/bulk/trainer/EditTrainerPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'EditPurchasedLinkPage.dart';

class DietPage extends StatelessWidget{
  const DietPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/bg_eat.png'),
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
                            'Kembali',
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
                      child: const Text('Nutrition',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Tips:',
                            style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),
                          ),
                          const Text('1. Eat more often\n2. Make sure your intake is high in nutrients',
                            style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 28,),
                    const Text('Carbohydrate',
                      style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
                    ),
                    const Text('Eat additional fibrous carbs,\nsuch as:',
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                    ),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/ubi.png'),
                            Text('Potato',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/singkong.png'),
                            Text('Cassava',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/nasi_merah.png'),
                            Text('Brown Rice',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/wheat.png'),
                            Text('Whole Wheat',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/sayur.png'),
                            Text('Vegetable',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 28,),
                    const Text('Protein',
                      style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
                    ),
                    const Text('Consume more protein\nlike :',
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                    ),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/daging.png'),
                            Text('Meat',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/telur.png'),
                            Text('Egg',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/tempe.png'),
                            Text('Tempe',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/almond.png'),
                            Text('Almond',style: TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 28,),
                    const Text('Fat',
                      style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
                    ),
                    const Text('Natural fats are the best kind.\nThis fat is derived from protein sources such as:',
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                    ),
                    Column(
                      children: [
                        Image.asset('assets/daging.png'),
                        Text('Meat',style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    const SizedBox(height: 28,),
                    const Text('Additional Supplements : ',
                      style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
                    ),
                    const Text('1. Creatine ',
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                    ),
                    const Text('The protein creatine gives muscles their\nentire energy, enabling them to Your body gets fatigued less easily as you gain strength.\nIt is advised to take it prior to training.',
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Purchase Link',
                              style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,decorationColor: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationThickness: 4 ),
                            ),
                            Visibility(
                              visible: appState.isAdmin,
                              child: InkWell(
                                onTap: ()=>{
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EditPurchasedLinkPage()))},
                                child: Row(
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

                        Image.asset('assets/creatine.png')
                      ],
                    ),
                    const Text('2. Mass Gainer ',
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                    ),
                    const Text('Mass Gainer has a protein composition,\ncarbohydrates and high calories.',
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Purchase Link',
                              style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,decorationColor: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationThickness: 4 ),
                            ),
                            Visibility(
                              visible: appState.isAdmin,
                              child: InkWell(
                                onTap: ()=>{
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EditPurchasedLinkPage()))},
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
                        Image.asset('assets/mass_gainer.png')
                      ],
                    ),
                    const SizedBox(height: 28,),
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