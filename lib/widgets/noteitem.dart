import 'package:flutter/material.dart';
import 'package:noteapp3/models/note_model.dart';
import 'package:noteapp3/widgets/edit_note.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key, this.color, required this.notemodel});
  final color;
  final Notemodel notemodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNote();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, right: 8, left: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notemodel.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 16),
                child: Text(
                  notemodel.subtitle,
                  style: TextStyle(color: Colors.black.withOpacity(.5)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black),
              ),
            ),
            Text(
              notemodel.date,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
