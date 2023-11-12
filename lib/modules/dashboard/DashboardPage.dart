

import 'package:aplikasi_body_goals/modules/bulk/BulkPage.dart';
import 'package:aplikasi_body_goals/modules/home/HomePage.dart';
import 'package:aplikasi_body_goals/modules/profile/ProfilePage.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget{
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  int _currentIndex = 0;
  bool _isBulkPageVisible = false;

  late List<Widget> _pages;



  void _navigateToPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _pages = [
      HomePage(onBulkClicked: () {
        setState(() {
          _isBulkPageVisible = true;
        });
        _navigateToPage(1);
      }),
      if (_isBulkPageVisible) BulkPage(),
      ProfilePage(),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_currentIndex],
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Color.fromRGBO(25, 176, 0, 1),
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0),)
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              // if (index==1 && !_isBulkPageVisible){
              //   _currentIndex = 2;
              // }else{
              //
              // }
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_home.png'),
              label: 'Home'
            ),
            if (_isBulkPageVisible)
              BottomNavigationBarItem(
                icon: Image.asset('assets/icon_barbell.png'),
                label: 'Bulk',
              ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icon_user.png'),
            label: 'Profile'),
          ],
        ),
      ),
    );
  }

}