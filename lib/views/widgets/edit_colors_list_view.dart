import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/note_model.dart';
import 'colors_list_view.dart';

class EditViewColorList extends StatefulWidget {
  const EditViewColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewColorList> createState() => _EditViewColorListState();
}

class _EditViewColorListState extends State<EditViewColorList> {
  late int currentindex;

  @override
  void initState() {
    currentindex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
