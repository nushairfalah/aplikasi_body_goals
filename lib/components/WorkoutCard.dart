import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget{
  final List<Widget> children;
  final String title;
  final String desc;
  const WorkoutCard({super.key, required this.children, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12,),
        Align(
          alignment: Alignment.centerLeft,
            child: Text(title,
              style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w700,fontSize: 14,),
              )),
        SizedBox(height: 12,),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: children,
        ),
        SizedBox(height: 12,),
        Text(desc, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14),),
      ],
    );
  }

}