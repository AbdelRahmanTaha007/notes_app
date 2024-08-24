import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todu_app/constants.dart';
import 'package:todu_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NotesModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
      print("Success");
    } catch (e) {
      print("Fail");
      print(e.toString());
      emit(AddNoteFailure());
    }
  }
}
