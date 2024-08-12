import 'package:flutter/material.dart';
import 'package:practice_ui_flutter/widgets/custom_container.dart';
import 'package:practice_ui_flutter/widgets/custom_listview.dart';
import 'package:practice_ui_flutter/widgets/custom_seperator.dart';
import 'package:practice_ui_flutter/widgets/mycustom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SafeArea(
          child: Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              backgroundColor: Colors.blueAccent,
              shape: ShapeBorder.lerp(
                BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                0.5, // This controls the interpolation
              ),
              onPressed: () {},
              label: Text("Boost", style: TextStyle(color: Colors.white)),
              icon: Icon(Icons.rocket_launch, color: Colors.white),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    MyAppBar(),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "File",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Manager",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.menu, size: 45, color: Colors.black26),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Let's connect together forever manage your life",
                      style: TextStyle(
                        color: Colors.grey[240],
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 275,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                            child: index==0? MyCardView():index ==1 ?MyCardView(color: Colors.blueAccent,) : index==2 ?MyCardView(color: Colors.black26,):MyCardView(),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15,),
                     CustomSeperator(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                   SizedBox(
                      height: 200, // Adjust this height as needed
                      child: ListView(
                        
                        shrinkWrap: true, // Ensure it only takes up as much space as needed
                        scrollDirection: Axis.vertical,
                        children: [
                          CustomListcardView(),
                          SizedBox(height: 10),
                          CustomListcardView(icon: Icons.video_camera_back,),
                          SizedBox(height: 10),
                          CustomListcardView(),
                          SizedBox(height: 10),
                          CustomListcardView(),
                          SizedBox(height: 10),
                          CustomListcardView(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
