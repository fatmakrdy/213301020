import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app_styles.dart';

class RaisedButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  final Color color;


  RaisedButton({Key? key,
    this.width=120,
    this.isResponsive = false,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ), // BoxDecoration
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 20),
       child: Text("",style:Styles.textStyle)),
            Image.asset("assets/images/button_one.png"),
        ],
        ),
      ),
    );
  }
}
