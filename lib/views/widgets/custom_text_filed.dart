import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPriamryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(color: kPriamryColor),
        border: bulidBorder(),
        enabledBorder: bulidBorder(),
        focusedBorder: bulidBorder(kPriamryColor),
      ),
    );
  }

  OutlineInputBorder bulidBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
