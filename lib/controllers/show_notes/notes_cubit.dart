import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todu_app/constants.dart';
import 'package:todu_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NotesModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NotesModel>(kNotesBox);

    notes = notesBox.values.toList();
    emit(NotesSuccess());
    print("#######notes : ${notes}");
    print("Success #########################");
  }
}
