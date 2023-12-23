import 'package:assigment_1/src/core/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FirstScreenTextField extends StatelessWidget {
  final Function(String) onChanged;

  const FirstScreenTextField({super.key,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none
        ),
        filled: true,
        hintStyle: hintTextStyle,
        hintText: AppLocalizations.of(context)!.firstScreenTextfieldHint_2,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(14),
      ),
      onChanged: onChanged,
    );
  }
}