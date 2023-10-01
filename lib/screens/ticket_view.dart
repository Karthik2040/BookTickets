import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/Column_layout.dart';
import 'package:booktickets/widgets/Layout_builder.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? iscolor;
  const TicketView({Key? key, required this.ticket, this.iscolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 162 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
            this is shows the blue part of the card 
            */
            Container(
                decoration: BoxDecoration(
                    color: iscolor == null
                        ? const Color(0xFF526799)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21)))),
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: iscolor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                        Expanded(child: Container()),
                        const ThickContainer(
                          iscolor: true,
                        ),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child:
                                    const AppLayouBuilderBuilder(sections: 6)),
                            Center(
                                child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: iscolor == null
                                    ? Colors.white
                                    : const Color(0xFF8ACCF7),
                              ),
                            )),
                          ],
                        )),
                        const ThickContainer(
                          iscolor: true,
                        ),
                        Expanded(child: Container()),
                        Text(
                          ticket['to']['code'],
                          style: iscolor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        )
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            ticket['from']['name'],
                            style: iscolor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ),
                        Text(
                          ticket['flying_time'],
                          style: iscolor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: iscolor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ),
                      ],
                    ),
                  ],
                )

                /*this is shows the blue part of the card */

                ),

            /*
            this is shows the centerorange part of the card 
            */
            Container(
              color: iscolor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: iscolor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: Colors.white)),
                                  )),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: iscolor == null
                                ? Colors.grey.shade300
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  ),
                ],
              ),
            ),
            /*
          this is shows the bottom orange part of the card 
          */
            Container(
              decoration: BoxDecoration(
                  color: iscolor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(iscolor == null ? 21 : 0),
                      bottomRight: Radius.circular(iscolor == null ? 21 : 0))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: ticket['date'],
                          secondText: "Date",
                          alignment: CrossAxisAlignment.start,
                          iscolor: false),
                      AppColumnLayout(
                          firstText: ticket['departure_time'],
                          secondText: "Departure time",
                          alignment: CrossAxisAlignment.center,
                          iscolor: false),
                      AppColumnLayout(
                          firstText: ticket['number'].toString(),
                          secondText: "Number",
                          alignment: CrossAxisAlignment.end,
                          iscolor: false),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
