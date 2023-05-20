import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_searh_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearhIcon(),
      ],
    );
  }
}
