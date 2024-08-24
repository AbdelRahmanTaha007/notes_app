import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todu_app/bloc_observer.dart';
import 'package:todu_app/constants.dart';
import 'package:todu_app/controllers/show_notes/notes_cubit.dart';
import 'package:todu_app/models/note_model.dart';

import 'package:todu_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();


  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  
  await Hive.openBox<NotesModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotesCubit(),)
      ],
      child: MaterialApp(
          theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
          debugShowCheckedModeBanner: false,
          home: NotesView()),
    );
  }
}
