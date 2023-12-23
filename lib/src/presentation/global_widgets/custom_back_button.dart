import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget{

  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context){
      return IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, color: Colors.blue),
        onPressed: () => Navigator.of(context).pop(),
      );
  }
}