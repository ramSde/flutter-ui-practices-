import 'package:flutter/material.dart';
import 'package:practice_ui_flutter/widgets/custom_container.dart';
import 'package:practice_ui_flutter/widgets/mycustom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Column(
                children: [
                  MyAppBar(),
                  SizedBox(
                    height: 30,
                  ),
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
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Manager",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(Icons.menu, size: 45, color: Colors.black26)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lets connnect together forever manage your life",
                    style: TextStyle(
                        color: Colors.grey[240],
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 350,
                    child: Flexible(
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(10),
                              child: MyCardView(),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
