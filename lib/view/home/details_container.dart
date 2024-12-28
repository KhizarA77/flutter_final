import 'package:firebase_final/models/juice.dart';
import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:flutter_rating/flutter_rating.dart';

class DetailsContainer extends StatelessWidget {
  final Juice juice;

  const DetailsContainer({Key? key, required this.juice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 314,
      color: const Color.fromARGB(200, 248, 208, 245),
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(juice.name,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
              SizedBox(width: 40),
              InputQty(
                initVal: 0,
                onQtyChanged: (val) {},
                qtyFormProps: QtyFormProps(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(207, 234, 147, 229)),
                  cursorColor: Colors.pink,
                  enableTyping: true,
                ),
                decoration: QtyDecorationProps(
                  borderShape: BorderShapeBtn.circle,
                  btnColor: const Color.fromARGB(255, 222, 113, 228),
                  fillColor: Colors.grey[200],
                  isBordered: true,
                ),
              )
            ],
          ),
          Text('Each(${juice.weight})'),
          Row(
            children: [
              StarRating(rating: 5),
              Text('(${juice.rating.toString()})'),
            ],
          ),
          SizedBox(height: 20),
          Text(juice.description, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black)),
          SizedBox(height: 20),
          Row(
            children: [
                Container(
                padding: EdgeInsets.all(8),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 150, 176),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.access_time, size: 24, color: Colors.black),
                ),
                SizedBox(width: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  Text('Delivery Time', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black)),
                  Text('40-45 min', textAlign: TextAlign.start,)
                ],),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Text('Total Price', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: Colors.black)),
                Text('\$${juice.price}0', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.black)),
              ],),
              SizedBox(width: 100),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 222, 113, 228),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('Add to Cart', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white))),
              )
            ],
          )
        ],
      ),
    );
  }
}
