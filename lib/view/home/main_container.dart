import 'package:firebase_final/models/models.dart';
import 'package:firebase_final/view/home/details_container.dart';
import 'package:firebase_final/view/home/image_container.dart';
import 'package:firebase_final/view/home/nav_container.dart';
import 'package:flutter/material.dart';


class MainContainer extends StatelessWidget {

  final Juice juice;
  const MainContainer({Key? key, required this.juice}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(200, 248, 208, 245)
      ),
      child: Column(
          children: [
            NavContainer(),
            ImageContainer(url: juice.image_url),
            DetailsContainer(juice: juice),
          ],
      ),
    );


  }

}