import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_note_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});
  static String id = 'editNoteView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
