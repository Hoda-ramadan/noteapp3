import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp3/const.dart';
import 'package:noteapp3/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotecubit extends Cubit<NoteState> {
  AddNotecubit() : super(initialState());
  bool isloading = false;
  AddNote(Notemodel note) async {
    isloading = true;
    emit(addloadingState());
    try {
      var NoteBox = Hive.box<Notemodel>(kNotebox);
      isloading = false;
      emit(addsucessState());
      await NoteBox.add(note);
    } catch (e) {
      isloading = false;
      emit(addfailurestate(emassage: e.toString()));
    }
  }
}
