import 'package:bilet/ekranlar/bottom_bar.dart';
import 'package:bilet/utils/app_buttons.dart';
import 'package:bilet/utils/responsive_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bir.png'),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 20,
                right: 70,
                child: Row(
                  children: [
                    SafeArea(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBar()));
                        },
                        icon: Icon(Icons.arrow_back_sharp),
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: 250,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(
                            text: "Leonardo Royal\nLondon St Paul’s Hotel",
                            style: Styles.detailLine1,
                          )),
                          Text(
                            "\$ 25",
                            style: Styles.detailLine3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                              color: Color(0xFF93BFCF)),
                          SizedBox(
                            width: 5,
                          ),
                          Text("London/UK", style: Styles.detailLine2),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Oda Sayısı",
                        style: Styles.headlinestyle2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Kaç oda rezerve etmek istersiniz?",
                        style: Styles.headlinestyle4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(
                                size: 50,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black54,
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : Color(0xFFE5E3EC),
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : Color(0xFFE5E3EC),
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Otel Özellikleri",
                        style: Styles.headlinestyle2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "459 Geniş ve Modern Yatak Odası\nLeo'nun Barı ve Restoranı\n18m Isıtmalı Yüzme Havuzu\nOtel Genelinde Ücretsiz WiFi",
                          style: Styles.headlinestyle4)
                    ],
                  ),
                )),
            Positioned(
                left: 20,
                bottom: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(
                      size: 50,
                      color: Colors.blueGrey,
                      backgroundColor: Colors.white,
                      borderColor: Colors.black54,
                      isIcon: true,
                      icon: Icons.favorite_outline_rounded,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RaisedButton(
                      color: Colors.blueGrey,
                      isResponsive: true,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
