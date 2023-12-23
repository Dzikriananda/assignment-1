import 'package:flutter/material.dart';

class FirstScreenPadding extends StatelessWidget {
  final Widget widget;
  final double verticalMargin;
  const FirstScreenPadding({super.key,required this.widget,required this.verticalMargin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalMargin,horizontal: MediaQuery.of(context).size.height * 0.035),
      child: widget
    );
  }
}