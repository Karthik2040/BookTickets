import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String FirstTab;
  final String SecondTab;
  const AppTicketTabs(
      {Key? key, required this.FirstTab, required this.SecondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          children: [
            /*Airlines Tickets*/
            Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.white),
                child: Center(
                  child: Text(FirstTab),
                )),

            /*
              hotels
               */
            Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.transparent),
                child: Center(
                  child: Text(SecondTab),
                )),
          ],
        ),
      ),
    );
  }
}
