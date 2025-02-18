part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
//class NotesSucsess extends NotesState {}


class NotesSucsess extends NotesState {
  final List<NoteModel> notes;

  NotesSucsess(this.notes);
}

// class NotesFaikure extends NotesState {
//   final String errMessage;

//   NotesFaikure(this.errMessage);
// }
