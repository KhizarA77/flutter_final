import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {

  final String url;
  const ImageContainer({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: const Color.fromARGB(200, 248, 208, 245),
      padding: EdgeInsets.only(bottom: 20),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(url, fit: BoxFit.cover),
      ),
    );



  }



}