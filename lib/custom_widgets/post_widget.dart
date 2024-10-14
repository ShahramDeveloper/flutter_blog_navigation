import 'package:flutter/material.dart';

Widget getBlogPost(
    {required String imageName,
    required String title,
    required String buy,
    required String sell,
    required bool showDivider}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image(
          image: AssetImage(imageName),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        textAlign: TextAlign.center,
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            sell,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.sell,
            size: 20,
            color: Colors.red,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            buy,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.price_check,
            size: 20,
            color: Colors.green,
          ),
        ],
      ),
      if (showDivider)
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: 300,
          child: Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ),
    ],
  );
}
