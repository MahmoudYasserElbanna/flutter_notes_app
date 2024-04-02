part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoading extends NoteState {}

class NoteSuccess extends NoteState {
  final List<NoteModel> notes;
  NoteSuccess({required this.notes});
}

class NoteFailure extends NoteState {
  final String errMassage;
  NoteFailure({required this.errMassage});
}
