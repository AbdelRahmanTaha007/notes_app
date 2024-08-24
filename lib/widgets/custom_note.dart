import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todu_app/controllers/show_notes/notes_cubit.dart';
import 'package:todu_app/models/note_model.dart';
import 'package:todu_app/views/edit_note_view.dart';

class CustomNote extends StatelessWidget {
  CustomNote({super.key, required this.note});

  NotesModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNoteView(note: note,),
            ));
      },
      child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 0, left: 15),
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(18)),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                title: Text(
                  maxLines: 1,
                  note.title,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    maxLines: 2,
                    note.subTitle,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 22,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    icon: Icon(Icons.delete, size: 35, color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15.0),
                child: Text(
                  "21-9-23",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          )),
    );
  }
}
