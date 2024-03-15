import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/notes_view.dart';

void main() => runApp(const NotesApp());

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
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
    );
  }
}
