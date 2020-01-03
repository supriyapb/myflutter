import 'package:flutter/material.dart';
//import 'changing_numbers.dart';

class DisplayImage extends StatelessWidget {
  int number;

  DisplayImage(this.number);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          child: Center(
            child: Stack(
              children: <Widget>[
                Center(
                  child: new Image.asset(
                    'images/circle1.jpg',
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "$number",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
