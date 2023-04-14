import 'package:bilet/ekranlar/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';
import 'hotel_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                SingleChildScrollView(
                  //scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //sütunlar arası boşluk bırakdık
                    children: [
                      SafeArea(
                        child: Column(
                          //yazıları hizaladık
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Günaydın ",
                              style: Styles.headlinestyle3,
                            ),
                            const Gap(5),
                            Text(
                              "Bilet Rezervasyonu",
                              style: Styles.headlinestyle1,
                            ),
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("assets/images/icon.png"))),
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFF675D50)),
                      Text(
                        " Search",
                        style: Styles.headlinestyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(
                    bigText: "Yaklaşan Uçuş", smallText: "hepsini gör"),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((singleTicket) =>
                  TicketView(
                    ticket: singleTicket,
                  ))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(
                bigText: "Oteller", smallText: "hepsini gör"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotellist
                    .map((singleHotel) => HotelScreen(hotel: singleHotel))
                    .toList()),
          ),
        ],
      ),
    );

  }

}
