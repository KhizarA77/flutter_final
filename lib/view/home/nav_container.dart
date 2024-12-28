import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NavContainer extends StatelessWidget {
  const NavContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 10),
      height: 100,
      width: double.infinity,
      color: const Color.fromARGB(198, 232, 195, 229),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.arrow_back_ios_new),
          SizedBox(width: 125),
          Text(Intl.message('Details'), style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
          SizedBox(width: 125),
          Icon(Icons.share_rounded),
        ],
      ),
    );
  }
}