import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String BigText;
  final String SmallText;

  const AppDoubleTextWidget(
      {Key? key, required this.BigText, required this.SmallText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          BigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
            onTap: () {
              // ignore: avoid_print
              print("object clicked");
            },
            child: Text(
              SmallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            )),
      ],
    );
  }
}
