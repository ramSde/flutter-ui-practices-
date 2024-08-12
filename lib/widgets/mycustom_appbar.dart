import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Icon(Icons.arrow_left,size: 40,color: Colors.black,),
            Container(
        height:45 ,
        width: 45,
        child:  Image.asset("assets/profile.png",fit: BoxFit.cover,),
            )
        
        ],)
        
        ;
  }
}