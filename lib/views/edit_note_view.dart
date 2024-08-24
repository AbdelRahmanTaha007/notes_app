import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todu_app/controllers/show_notes/notes_cubit.dart';
import 'package:todu_app/models/note_model.dart';
import 'package:todu_app/widgets/custom_appbar.dart';
import 'package:todu_app/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});

  @override
  final NotesModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                Navigator.pop(context);
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
              title: "Edit Note",
              icon: Icons.done,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                hint: widget.note.title),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hint: widget.note.subTitle,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
