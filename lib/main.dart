import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/bloc_observer.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  // Failed HiveError: The box "note_box" is already open and of type Box<dynamic>
  // Solve it by adding <datatype>
  await Hive.openBox<NoteModel>(kPrimaryBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins',
          ),
          initialRoute: NotesView.id,
          routes: {
            NotesView.id: (context) => const NotesView(),
            EditNotesView.id: (context) => const EditNotesView(),
          },
        ),
        designSize: const Size(390, 840),
      ),
    );
  }
}
