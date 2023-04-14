import 'package:bilet/utils/app_layout.dart';
import 'package:bilet/widgets/double_text_widget.dart';
import 'package:bilet/widgets/icon_text_widget.dart';
import 'package:bilet/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFECEEF5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "Ne\nArıyorsunuz?",
            style: Styles.detailLine4.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppTicketTabs(firstTab: 'Yaklaşan Uçuşlar', secondTab: 'Oteller',),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_outlined, text: "Kalkış"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Varış"),
          Gap(AppLayout.getHeight(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getWidth(18),
                  horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                color: Color(0xFF6096B4),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              ),
              child: Center(
                child: Text(
                  "Bilet Bul",
                  style: Styles.textStyle,
                ),
              )),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: "Yolculukta ne yapabilirim?", smallText: "hepsini gör"),
          Gap(AppLayout.getHeight(15)),
          Row(
            children: [
              //film kısmı
              Container(
                height: AppLayout.getHeight(350),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFF6096B4),
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(

                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/cinema.jpg"),
                          )),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      "Uçuşla alakalı endişelerini film izleyip\nuzaklaştırabilirsin",
                      style: Styles.headlinestyle5,
                    ),
                  ],
                ),
              ),
              const Gap(20),
              //müzik kısmı
              Container(
                height: AppLayout.getHeight(350),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFF6096B4),
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/music.jpg"),
                          )),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text("Müzik dinleyerek mutlu olabilirsin",
                        style: Styles.headlinestyle5.copyWith(fontSize: 20)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
