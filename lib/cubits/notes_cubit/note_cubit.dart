import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

import '../../constants.dart';

part 'note_state.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NoteInitial());
  fetchNote() {
    try {
      var noteBox = Hive.box<NoteModel>(kPrimaryBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NoteSuccess(notes: notes));
    } catch (e) {
      emit(NoteFailure(errMassage: e.toString()));
    }
  }
}
