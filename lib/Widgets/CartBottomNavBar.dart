import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        height: 270,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ringkasan Belanja",
                  style: TextStyle(
                    color: Color(0xFF4C53A5),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Padding(
          padding: EdgeInsets.all(1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'PPN 10%',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                  ),
                  Text(
                    'Rp 2.000.00',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                    ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Belanja',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                  ),
                  Text(
                    'Rp 20.000.00',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                  ),
                  
                ],
              ),
              Divider( // Tambahkan Divider di sini
                color: Colors.black,
                thickness: 1.0,
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Belanja',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                  ),
                  Text(
                    'Rp 20.000.00',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                  ),
                  
                ],
              ),
              SizedBox(height: 24.0),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: 
                BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Text(
                  "Chekout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}