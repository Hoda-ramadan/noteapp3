import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp3/cubits/notesCubit/readnotecubit.dart';
import 'package:noteapp3/widgets/AddnoteModelBottomSheet.dart';
import 'package:noteapp3/widgets/Note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReadNotecubit>(
      create: (context) => ReadNotecubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(24),
              ),
              context: context,
              builder: (context) {
                return AddNoteModelBottomSheet();
              },
            );
          },
          child: Icon(Icons.add),
        ),
        body: NotesviewBody(),
      ),
    );
  }
}
