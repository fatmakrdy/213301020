import 'package:flutter/material.dart';
// otel alt kısmının rengi
Color primary =const Color(0xFFBDCDD6);
class Styles{
  static Color primaryColor =primary;
  static Color textColor= const Color(0xFF3b3b3b);
  static Color bgColor=const Color(0xFFeedf2);
  static Color grayColor = const Color(0xFF93BFCF);
  static Color blueColor = const Color(0xFFFFF1DC);
  static TextStyle textStyle=TextStyle(fontSize: 16,color:textColor,fontWeight:FontWeight.w500 );
  static TextStyle headlinestyle1=TextStyle(fontSize: 26,color:textColor,fontWeight:FontWeight.bold );
  static TextStyle headlinestyle2=TextStyle(fontSize: 21,color:textColor,fontWeight:FontWeight.bold );
  static TextStyle headlinestyle3=TextStyle(fontSize: 17,fontWeight:FontWeight.w500 );
  static TextStyle headlinestyle4=TextStyle(fontSize: 12,color:Colors.grey.shade500,fontWeight:FontWeight.bold );
  static TextStyle headlinestyle5=TextStyle(fontSize: 16,color:textColor,fontWeight:FontWeight.bold );

  static Color hotelName = const Color(0xFF6096B4);
  static TextStyle detailLine1=TextStyle(fontSize: 20,color:hotelName,fontWeight:FontWeight.bold );

  static Color location = const Color(0xFF93BFCF);
  static TextStyle detailLine2=TextStyle(fontSize: 15,color:location,fontWeight:FontWeight.bold );

  static Color price = const Color(0xFF93BFCF);
  static TextStyle detailLine3=TextStyle(fontSize: 30,color:price,fontWeight:FontWeight.bold );

  static Color welcome = const Color(0xFF525252);
  static TextStyle detailLine4=TextStyle(fontSize: 30,color:welcome,fontWeight:FontWeight.bold );

}


