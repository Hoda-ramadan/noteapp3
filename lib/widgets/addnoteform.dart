import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:noteapp3/cubits/Add_note_cubit/add_notecubit.dart";
import "package:noteapp3/models/note_model.dart";
import "package:noteapp3/widgets/custom_buttom.dart";
import "package:noteapp3/widgets/customtextfeild.dart";

class AddNoteform extends StatefulWidget {
  AddNoteform({super.key});

  @override
  State<AddNoteform> createState() => _AddNoteformState();
}

class _AddNoteformState extends State<AddNoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),
          Customtextfeild(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(height: 16),
          Customtextfeild(
            onSaved: (value) {
              subtitle = value;
            },
            hint: "containt",
            maxline: 5,
          ),
          SizedBox(height: 20),
          BlocBuilder<AddNotecubit, NoteState>(
            builder: (BuildContext context, state) {
              return CustomButtom(
                isloading: state is addloadingState ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var notemodel = Notemodel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Color.fromARGB(221, 163, 114, 205).value,
                    );
                    BlocProvider.of<AddNotecubit>(context).AddNote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
