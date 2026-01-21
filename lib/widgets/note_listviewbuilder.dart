import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp3/cubits/notesCubit/readnotecubit.dart';
import 'package:noteapp3/cubits/notesCubit/readnotestate.dart';
import 'package:noteapp3/models/note_model.dart';

import 'package:noteapp3/widgets/noteitem.dart';

class NoteListviewbuilder extends StatelessWidget {
  const NoteListviewbuilder({super.key});
  final data = const [
    Color.fromARGB(239, 242, 190, 121),
    Color.fromARGB(215, 114, 205, 149),
    Color.fromARGB(215, 114, 187, 205),
    Color.fromARGB(217, 125, 114, 205),
    Color.fromARGB(221, 163, 114, 205),
    Color.fromARGB(232, 205, 114, 200),
    Color.fromARGB(228, 205, 114, 114),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotecubit, NoteState>(
      builder: (BuildContext context, state) {
        List<Notemodel> notes =
            BlocProvider.of<ReadNotecubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,

            itemBuilder: (context, i) {
              final color = data[i % data.length];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Noteitem(color: color, notemodel: notes[i]),
              );
            },
          ),
        );
      },
    );
  }
}
