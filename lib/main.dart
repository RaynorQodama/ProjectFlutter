import 'package:flutter/material.dart';
import 'package:shop/pages/CartPage.dart';
import 'package:shop/pages/DataBarang.dart';
import 'package:shop/pages/Homepage.dart';
import 'package:shop/pages/InputPage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
 @override
 Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    ),
    routes: {
      "/" : (context) => HomePage(),
      "cartPage" : (context) => CartPage(),
      "homePage" : (context) => HomePage(),
      "dataBarang" : (context) => DataBarang(),
      "inputPage" : (context) => InputPage(),

    },
  );
 }
}

// import 'package:flutter/material.dart';
// import 'package:badges/badges.dart' as badges;


// class CartAppBar extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: EdgeInsets.all(25),
//       child: Row(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(
//               left: 20
//               ),
//               child: Text(
//               "foto",
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.black
//               ),
//             ),
//             ),
//          Padding(
//           padding: EdgeInsets.only(
//             left: 30),
//             child: Text(
//               "Nama Produk",
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.black
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               left:20,
//             ),
//             child: Text(
//               "Harga",
//             style: TextStyle(
//               fontSize: 20,
//               color:Colors.black,
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               left:20,
//             ),
//             child: Text(
//               "Aksi",
//             style: TextStyle(
//               fontSize: 20,
//               color:Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }