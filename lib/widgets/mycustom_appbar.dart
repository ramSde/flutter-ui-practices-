import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration( 
             color: Colors.amber,
             borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.all(0),
         
           // Ensure no extra padding
          alignment: Alignment.centerLeft, // Align the icon to the left
          child: Icon(
            Icons.arrow_left,
            size: 40, // Adjust size if necessary
            color: Colors.black,
          ),
        ),
        Container(
          height: 45,
          width: 45,
          child: Image.asset(
            "assets/profile.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
