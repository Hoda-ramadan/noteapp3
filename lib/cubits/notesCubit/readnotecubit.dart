import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:noteapp3/const.dart';

import 'package:noteapp3/cubits/notesCubit/readnotestate.dart';
import 'package:noteapp3/models/note_model.dart';

class ReadNotecubit extends Cubit<NoteState> {
  ReadNotecubit() : super(initialState());

  List<Notemodel>? notes;
  fetchallnotes() async {
    var NoteBox = Hive.box<Notemodel>(kNotebox);
    notes = NoteBox.values.toList();
  }
}
