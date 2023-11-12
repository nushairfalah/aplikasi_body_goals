import 'package:flutter/material.dart';

class AdminTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isImage;

  const AdminTextField({super.key, required this.label, required this.hint, required this.isImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: Color.fromRGBO(217, 217, 217, 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Text(
              label,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 14),
            child: isImage? Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, // Border color
                  width: 2.0, ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))
              ),
              child: Icon(
                Icons.add,
                size: 18.0,
                color: Colors.black,
              ),
            ): TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle:
                const TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 14.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)) // Set the radius here
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
