import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:magic_pot/dislpay_image.dart';

class ChangingNumbers extends StatefulWidget {
  @override
  _ChangingNumbersState createState() => _ChangingNumbersState();
}

class _ChangingNumbersState extends State<ChangingNumbers> {
  int firstNumber = Random().nextInt(10);
  int secondNumber = Random().nextInt(10);
  int thirdNumber = Random().nextInt(10);

  void changeNumber() {
    setState(() {
      firstNumber = Random().nextInt(3);
      secondNumber = Random().nextInt(3);
      thirdNumber = Random().nextInt(3);
    });
    if ((firstNumber == secondNumber) &&
        (secondNumber == thirdNumber) &&
        (thirdNumber == firstNumber)) {
      //AlertDialog(title: Text('Congratulations!! You win the Jackpot!!!',),);
      showToast();
    }
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: 'Congratulations!! You won the Jackpot!!!',
      fontSize: 35.0,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }

  void getNumber(int number) {
    Text(
      '$firstNumber',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              DisplayImage(firstNumber),
              DisplayImage(secondNumber),
              DisplayImage(thirdNumber),
              
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: RaisedButton(
                  onPressed: () {
                    changeNumber();
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFCD47A1),
                          Color(0xCD043AB5),
                          Color(0xFFCD47A1),
                          Color(0xCD043AB5),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text('Click to win the jackpot!!',
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
