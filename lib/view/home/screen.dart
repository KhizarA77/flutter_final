import 'package:firebase_final/models/models.dart';
import 'package:firebase_final/view/home/main_container.dart';
import 'package:flutter/material.dart';



class Screen extends StatelessWidget {
  final Juice juice;
  const Screen({Key? key, required this.juice}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(height: double.infinity, width: double.infinity, padding: EdgeInsets.only(left: 10,top: 50, right: 10, bottom: 30), color: const Color.fromARGB(255, 232, 131, 164),child: MainContainer(juice: juice)),
    );

  }
}