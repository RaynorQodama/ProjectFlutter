import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(
              left:20,
            ),
            child: Text(
              "RY Shop",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4C53A5),
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
