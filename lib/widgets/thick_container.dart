import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? iscolor;
  const ThickContainer({Key? key, this.iscolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 2.5,
              color: iscolor == null ? Colors.white : Color(0xFF8ACCF7))),
    );
  }
}
