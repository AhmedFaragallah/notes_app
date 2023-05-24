import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key, required this.hint, this.maxLine = 1, this.onSaved});
  final String hint;
  final int maxLine;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLine,
      cursorColor: kPriamryColor,
      decoration: InputDecoration(
        hintText: hint,
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
