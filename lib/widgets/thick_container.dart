import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;

  const ThickContainer({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
          border: Border.all(width:2.5,color: isColor==null? Colors.white:Color(0xFF6096B4)
            )
      ),
    );
  }
}