import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/Column_layout.dart';

import 'package:booktickets/widgets/Ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                    FirstTab: "Upcoming", SecondTab: "previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    iscolor: true,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                    height: 46,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.only(top: 4),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(
                                firstText: 'Flutter DB',
                                secondText: 'Passenger',
                                alignment: CrossAxisAlignment.start,
                                iscolor: false,
                              ),
                              AppColumnLayout(
                                firstText: '052789 667709',
                                secondText: 'Passport',
                                alignment: CrossAxisAlignment.end,
                                iscolor: false,
                              ),
                            ],
                          ),
                          Gap(AppLayout.getHeight(1)),
                        ],
                      ),
                    )),
                Container(
                  height: AppLayout.getHeight(80),
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(
                                    '*** 2462',
                                    style: Styles.headLineStyle3,
                                  ),
                                ],
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                'payment method',
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text(
                              '\$249.99',
                              style: Styles.headLineStyle3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                /* 
              bar code*/
                const SizedBox(
                  height: 1,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                          bottomRight:
                              Radius.circular(AppLayout.getHeight(21)))),
                  margin: EdgeInsets.only(
                      left: AppLayout.getHeight(15),
                      right: AppLayout.getHeight(15)),
                  padding: EdgeInsets.only(
                      bottom: AppLayout.getHeight(15),
                      top: AppLayout.getHeight(15)),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'https://github.com/Karthik2040',
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: 70,
                        )),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: TicketView(
                      ticket: ticketList[0],
                    )),
              ],
            ),
            Positioned(
              left: AppLayout.getHeight(19),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: AppLayout.getHeight(19),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
          ],
        ));
  }
}
