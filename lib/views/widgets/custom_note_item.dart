import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    note.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Text(
                      note.subTitle,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        note.delete();
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black,
                        size: 30,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    note.date,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 18),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
