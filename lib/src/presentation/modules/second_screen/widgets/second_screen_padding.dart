import 'package:flutter/material.dart';

class SecondScreenPadding extends StatelessWidget {
  final Widget widget;
  const SecondScreenPadding({super.key,required this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 30),
        child: Align(
          alignment: Alignment.centerLeft,
          child: widget
        ),
    );
  }
}