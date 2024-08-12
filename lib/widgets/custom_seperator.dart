import 'package:flutter/material.dart';

class CustomSeperator extends StatelessWidget {
  const CustomSeperator({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                   
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        1 == index
                            ? Container(
                                width: 25,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              )
                            : Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                              ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
                  
                  
  }
}