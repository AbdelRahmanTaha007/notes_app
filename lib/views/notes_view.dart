import 'package:flutter/material.dart';
import 'package:todu_app/widgets/add_note_bottomsheet.dart';
import 'package:todu_app/widgets/custom_appbar.dart';
import 'package:todu_app/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 55,
              ),
              CustomAppBar(
                title: "Notes",
                icon: Icons.search,
              ),
              const SizedBox(
                height: 10,
              ),
              const NotesListView(),
            ],
          ),
        ),
      ),
    );
  }
}
