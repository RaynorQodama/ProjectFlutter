import 'package:flutter/material.dart';
import 'package:shop/Widgets/DataAppBar.dart';
import 'package:shop/Widgets/DataItem.dart';

class DataBarang extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DataAppBar(),
              GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "inputPage");
              },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  margin: EdgeInsets.only(top: 20, left: 10, right: 220),
                  decoration: BoxDecoration(
                    color: Color(0xFF4C53A5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Add Data +",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 0
              ),
              child: Text(
              "foto",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),
            ),
            ),
            Spacer(),
         Padding(
          padding: EdgeInsets.only(
            left: 0),
            child: Text(
              "Nama Produk",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left:0,
            ),
            child: Text(
              "Harga",
            style: TextStyle(
              fontSize: 20,
              color:Colors.black,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left:0,
            ),
            child: Text(
              "Aksi",
            style: TextStyle(
              fontSize: 20,
              color:Colors.black,
              ),
            ),
          ),
        ],
      ),
    ),

          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              ),
            ),
            child: Column(children: [
              DataItem(),
              Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.add, 
                      color: Colors.transparent),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Add Coupon Code",
                    style: TextStyle(
                      color: Colors.transparent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    ),
                  ),
                ],),
              ),
            ],
           ),
          ),
        ],
      ),
    );
  }
}
