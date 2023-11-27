import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class DataAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
          child: Icon(
            Icons.arrow_back, 
            size: 30, 
            color: Color(0xFF4C53A5),
            ),
          ),
          Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 60),
                // alignment: Alignment.center,
                height: 30,
                // width: double.infinity,
                decoration: 
                BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Text(
                  "Data Barang",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(5)
            ),
            badgeContent: Text(
              "1", 
              style: TextStyle(color: Colors.white),
            ),    
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.person_2_outlined,
                size: 30,
                color:Color(0xFF4C53A5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// badges.Badge(
//             badgeStyle: badges.BadgeStyle(
//             badgeColor: Colors.red,
//             padding: EdgeInsets.all(5)
//             ),
//             badgeContent: Text(
//               "1", 
//               style: TextStyle(color: Colors.white),
//             ),    
//             child: InkWell(
//               onTap: () {},
//               child: Icon(
//                 Icons.person_2_outlined,
//                 size: 30,
//                 color:Color(0xFF4C53A5),
//               ),
//             ),
//           ),