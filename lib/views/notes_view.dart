import 'package:flutter/material.dart';
import 'package:todu_app/widgets/custom_appbar.dart';
import 'package:todu_app/widgets/custom_note.dart';
import 'package:todu_app/widgets/custom_text_field.dart';
import 'package:todu_app/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              CustomAppBar(),
              SizedBox(
                height: 10,
              ),
              NotesListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomTextField(
            hint: "Title",
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(
            hint: "Content",
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}
