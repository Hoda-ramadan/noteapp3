part of 'add_notecubit.dart';

@immutable
class NoteState {}

class initialState extends NoteState {}

class addloadingState extends NoteState {}

class addsucessState extends NoteState {}

class addfailurestate extends NoteState {
  final String emassage;

  addfailurestate({required this.emassage});
}
