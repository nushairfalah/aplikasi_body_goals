import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget{
  const ChangePasswordPage({super.key});

  @override
  State<StatefulWidget> createState() =>_ChangePasswordPageState();

}
class _ChangePasswordPageState extends State<ChangePasswordPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Align(
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
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      left: 28, right: 28, top: 14, bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Recent Password',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 28.0, right: 28.0),
                  child: SizedBox(
                    width: 230,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(25, 176, 0, 1),
                        filled: true,
                        hintText: 'Recent Password',
                        hintStyle: TextStyle(
                            color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      left: 28, right: 28, top: 14, bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'New Password',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 28.0, right: 28.0),
                  child: SizedBox(
                    width: 230,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(25, 176, 0, 1),
                        filled: true,
                        hintText: 'New Password',
                        hintStyle: TextStyle(
                            color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      left: 28, right: 28, top: 14, bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Confirm New Password',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 28.0, right: 28.0),
                  child: SizedBox(
                    width: 230,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(25, 176, 0, 1),
                        filled: true,
                        hintText: 'Confirm New Password',
                        hintStyle: TextStyle(
                            color: Colors.white),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(25, 176, 0, 1), width: 1.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 28.0, right: 28.0,top: 14,bottom: 14),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
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
                        'Finish',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(25, 176, 0, 1), // Text color
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
}