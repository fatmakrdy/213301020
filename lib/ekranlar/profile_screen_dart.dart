import 'package:bilet/utils/app_layout.dart';
import 'package:bilet/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/icon.png"))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Bilet Rezervasyonu",
                    style: Styles.headlinestyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFEF4F3)),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFEF4F3)),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeight(3),
                              vertical: AppLayout.getHeight(3)),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4E7991)),
                                child: const Icon(
                                  FluentSystemIcons.ic_fluent_shield_filled,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              const Text(
                                "premium durumu",
                                style: TextStyle(
                                    color: Color(0xFF4E7991),
                                    fontWeight: FontWeight.w600),
                              ),
                              Gap(AppLayout.getHeight(5)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  SafeArea(
                    child: InkWell(
                      onTap: () {
                        print("bastın");
                      },
                      child: Text(
                        "edit",
                        style: Styles.textStyle.copyWith(
                            color: Styles.textColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF93BFCF)),
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yeni bir ödülün var",
                          style: Styles.headlinestyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "Bu yıl 20 uçuş yaptın",
                          style: Styles.headlinestyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Birikmiş Mil",
            style: Styles.headlinestyle2,
          ),
          Container(
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "145806",
                  style: TextStyle(
                      fontSize: 45,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "katedilen mil",
                      style: Styles.headlinestyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "11 Temmuz 2022",
                      style: Styles.headlinestyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "23 042",
                      style: Styles.textStyle,
                    ),
                    Text(
                      "Turkish Airline",
                      style: Styles.textStyle,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "mil",
                      style: Styles.headlinestyle4,
                    ),
                    Text(
                      "Alınan havayolu",
                      style: Styles.headlinestyle4,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "52 354",
                        style: Styles.textStyle,
                      ),
                      Text(
                        "Pegasus",
                        style: Styles.textStyle,
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "mil",
                        style: Styles.headlinestyle4,
                      ),
                      Text(
                        "Alınan havayolu",
                        style: Styles.headlinestyle4,
                      ),
                    ]),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1050",
                      style: Styles.textStyle,
                    ),
                    Text(
                      "Sunexpress",
                      style: Styles.textStyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "mil",
                      style: Styles.headlinestyle4,
                    ),
                    Text(
                      "Alınan havayolu",
                      style: Styles.headlinestyle4,
                    ),
                  ],

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
