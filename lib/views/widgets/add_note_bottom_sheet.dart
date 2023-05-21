import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CustomTextFiled(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            hint: 'Content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
