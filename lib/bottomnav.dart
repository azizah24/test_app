import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget{
  String imagenav;
  BottomNavItem({required this.imagenav});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(imagenav,
          width: 24, height: 24,),
        SizedBox(height: 15 ),
      ],
    );
  }

}