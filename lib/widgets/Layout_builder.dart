import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayouBuilderBuilder extends StatelessWidget {
  final bool? iscolor;
  final int sections;
  final double width;
  const AppLayouBuilderBuilder(
      {Key? key, required this.sections, this.iscolor, this.width = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // ignore: avoid_print
        print("the width is ${constraints.constrainWidth()}");
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              (constraints.constrainWidth() / 6).floor(),
              (index) => SizedBox(
                  width: width,
                  height: AppLayout.getHeight(1),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: iscolor == null
                              ? Colors.white
                              : Colors.grey.shade300))),
            ));
      },
    );
  }
}
