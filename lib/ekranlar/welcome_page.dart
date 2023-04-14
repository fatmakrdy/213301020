import 'package:bilet/ekranlar/home_page.dart';
import 'package:bilet/utils/responsive_button.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'bottom_bar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "img_1.jpg",
    "img_2.jpg",
    "img_3.jpg",
  ];
  List texts = [
    "Yaklaşan\nUçuşlarını\nGörebilirsin",
    "Otelleri\nİnceleyebilirsin",
    "Keyifli\nBir\nSeyahat\nİçin...",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (__, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/" + images[index]),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              )),
              child: Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SafeArea(
                          child: Text(
                            texts[index],
                            style: Styles.detailLine4,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            icon: Icon(
                              Icons.double_arrow,
                              size: 50,
                            ),
                            color: Colors.blueGrey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? Color(0xFFECECEC)
                                : Color(0xFFECECEC).withOpacity(0.3),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
