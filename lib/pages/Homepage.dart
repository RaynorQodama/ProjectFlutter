import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:shop/Widgets/CategoriesWidget.dart';
import 'package:shop/Widgets/HomeAppBar.dart';
import 'package:shop/Widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),                
                ),
                child: Row(
                 children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Here...",
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.camera_alt,
                    size: 27,
                    color: Color(0xFF4C53A5),
                  )
                ],),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 20, 
                  horizontal: 10,
                ),
                child: Text(
                  "categories",
                  style: TextStyle(
                    fontSize: 25, 
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
              CategoriesWidget(),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "All Food", 
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                 ),
                ),
              ),
              ItemsWidget(),            
            ],
          ),
        ),
      ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(
            Icons.home, 
            size: 30, 
            color: Colors.white,
          ),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(5)
            ),
            badgeContent: Text(
              "3", 
              style: TextStyle(color: Colors.white),
            ),
             child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(               
                Icons.shopping_cart_outlined,
                size: 30,
                color:Colors.white,
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "dataBarang");
              },
              child: Icon(
                Icons.list_outlined, 
                size: 30, 
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// child: InkWell(
//               onTap: () {
//                 Navigator.pushNamed(context, "");
//               },
//               Icon(
//                 Icons.list_outlined, 
//                 size: 30, 
//                 olor: Colors.white,
//               ),
//             ),