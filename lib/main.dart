import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp3/Bloc_observise.dart';
import 'package:noteapp3/const.dart';
import 'package:noteapp3/models/note_model.dart';
import 'package:noteapp3/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = simpleBlocObservise();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(kNotebox);

  runApp(Noteapp());
}

class Noteapp extends StatelessWidget {
  const Noteapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),

      home: NoteView(),
    );
  }
}
