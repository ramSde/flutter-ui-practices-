import 'package:flutter/material.dart';

class MyCardView extends StatefulWidget {
  const MyCardView({super.key});

  @override
  State<MyCardView> createState() => _MyCardViewState();
}

class _MyCardViewState extends State<MyCardView> {
  double _position = 0;
  bool _unlocked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
     
      width: MediaQuery.of(context).size.width / 1.6,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildHeader(),
          _buildInfoRow(),
          const SizedBox(height: 20),
          _buildProgressIndicator(context),
          const SizedBox(height: 5),
          const Text(
            "74 GB / 138 GB",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(height: 10),
          _buildCleanSlider(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Manager",
          style: TextStyle(
            color: Colors.purple[900],
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.more_horiz,
          size: 20,
          color: Colors.purple[900],
        ),
      ],
    );
  }

  Widget _buildInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Large",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Files",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              "92",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Times",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProgressIndicator(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              minHeight: 8,
              value: 0.65, // 65% filled
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.lightGreen[500]!),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCleanSlider() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(120),
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        Positioned(
          left: 5,
          top: (50 - 40) / 2,
          child: Container(
            width: 90,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(25),
                right: Radius.circular(25),
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              "clean",
              style: TextStyle(
                color: Colors.black26,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
