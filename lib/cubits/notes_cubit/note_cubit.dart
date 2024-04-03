import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

import '../../constants.dart';

part 'note_state.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NoteInitial());
  List<NoteModel>? notes;
  fetchNotes() {
    var noteBox = Hive.box<NoteModel>(kPrimaryBox);
    notes = noteBox.values.toList();
    emit(NoteSuccess());
  }
}
