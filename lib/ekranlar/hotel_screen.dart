import 'package:bilet/utils/app_layout.dart';
import 'package:bilet/view/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Otel fiyatı ${hotel['price']}");
    final size = AppLayout.getSize(context);
    return Container(
      width: 200,
      height: AppLayout.getHeight(300),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              //otel kısmının alt kısmının rengi
              color: Colors.white,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          const Gap(10),
            Text(
              hotel['place'],
              style: Styles.headlinestyle2.copyWith(color: Styles.blueColor),
            ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headlinestyle3.copyWith(color: Color(0xFFFFF1DC)),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/gece',
            style: Styles.headlinestyle1.copyWith(color: Styles.blueColor),
          ),
        ],
      ),
    );
  }
}
