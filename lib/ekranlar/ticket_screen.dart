import 'package:bilet/ekranlar/ticket_view.dart';
import 'package:bilet/utils/app_info_list.dart';
import 'package:bilet/utils/app_layout.dart';
import 'package:bilet/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Color(0xFFDDDFE6),
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(10)),
            Text(
              "Biletler",
              style: Styles.headlinestyle1,
            ),
            Gap(AppLayout.getHeight(20)),
            AppTicketTabs(
                firstTab: "Yaklaşan uçuşlar", secondTab: "Önceki Uçuş"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0], isColor: true),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Fatma",
                        style: Styles.textStyle,
                      ),
                      Text(
                        "5425 864796",
                        style: Styles.textStyle,
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Yolcu",style: Styles.headlinestyle4),
                      Text("Pasaport",style: Styles.headlinestyle4)
                    ],
                  ),
                  Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("3647385632324523",style: Styles.textStyle),
                      Text("B2SHJK3",style: Styles.textStyle)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("E-bilet Numarası",style: Styles.headlinestyle4),
                      Text("Bilet Kodu",style: Styles.headlinestyle4)
                    ],
                  ),
                  Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/visa.jpg",scale: 14,),
                      Text(" *** 24652",style: Styles.textStyle,),
                      Gap(137),
                      Text("\$250",style: Styles.textStyle,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ödeme yöntemi ",style: Styles.headlinestyle4),
                      Text("Fiyat",style: Styles.headlinestyle4,)
                    ],
                  ),
                  Row(
                    children: [
                          Text("   ")
                    ],
                  )

                ],
              ),
            ),
            
          ],
        ),
      ]),
    );
  }
}
