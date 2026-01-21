import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp3/cubits/Add_note_cubit/add_notecubit.dart';
import 'package:noteapp3/widgets/addnoteform.dart';

class AddNoteModelBottomSheet extends StatelessWidget {
  const AddNoteModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotecubit(),
      child: BlocConsumer<AddNotecubit, NoteState>(
        builder: (BuildContext context, state) {
          return AbsorbPointer(
            absorbing: state is addloadingState,
            child: Padding(
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: AddNoteform()),
            ),
          );
        },

        listener: (BuildContext context, state) {
          if (state is addfailurestate) {
            print("faild state");
          }
          if (state is addsucessState) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
