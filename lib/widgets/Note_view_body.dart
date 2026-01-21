import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp3/cubits/notesCubit/readnotecubit.dart';
import 'package:noteapp3/widgets/custom_appbar.dart';
import 'package:noteapp3/widgets/note_listviewbuilder.dart';

class NotesviewBody extends StatefulWidget {
  const NotesviewBody({super.key});

  @override
  State<NotesviewBody> createState() => _NotesviewBodyState();
}

class _NotesviewBodyState extends State<NotesviewBody> {
  void intialState() {
    BlocProvider.of<ReadNotecubit>(context).fetchallnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppbar(data: 'Notes', icon: Icons.search),
          SizedBox(height: 40),
          Expanded(child: NoteListviewbuilder()),
        ],
      ),
    );
  }
}
