import 'package:flutter/material.dart';

class CustomListcardView extends StatelessWidget {
  IconData? icon;
   CustomListcardView({super.key,this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 6.0,bottom: 6,left: 5,right: 5),
        // margin: EdgeInsets.all(10),
      decoration: 
      BoxDecoration(color:
      Color.fromARGB(255, 220, 214, 214),
      borderRadius: BorderRadius.circular(20), ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
           SizedBox(width: 5,),
          Container(
            padding: EdgeInsets.all(10),
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
           color: Colors.white,),
            child:Icon(icon?? Icons.music_note,size: 50,color:icon==null? Colors.grey : Colors.amber,))
          ,SizedBox(width:10,),
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Text(icon==null?"Music":"Video",style: TextStyle(color: Color.fromARGB(255, 165, 0, 198), 
              fontSize: 25,
              fontWeight: FontWeight.bold),),
              Text("223 Items",style: TextStyle(color: Colors.black, 
              fontSize: 15,
              fontWeight: FontWeight.w500),),
            ],
           )
        ],
        
      ),
    );
  }
}