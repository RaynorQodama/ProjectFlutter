import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i = 1 ; i < 4 ; i++)
      Container(
        height: 110,
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
            Container(
              height: 70,
              width: 70,
              margin: EdgeInsets.only(right: 15),
              child: Image.asset("images/$i.jpg"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp 20.000 ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(padding: EdgeInsets.symmetric(vertical: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.delete,
                color: Colors.red,
                ),
                
              ],
            ),
          ),
        ],),
      ),
    ],);
  }
}