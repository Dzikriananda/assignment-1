import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String data;
  const CustomAlertDialog({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(data,textAlign: TextAlign.center),
      actions: [
        TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: const Text('OK')
        )
      ],
    );
  }
}