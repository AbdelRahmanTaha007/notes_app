import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todu_app/controllers/add_note/show_notes/notes_cubit.dart';
import 'package:todu_app/widgets/add_note_bottomsheet.dart';
import 'package:todu_app/widgets/custom_appbar.dart';
import 'package:todu_app/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
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
                CustomAppBar(
                  title: "Notes",
                  icon: Icons.search,
                ),
                SizedBox(
                  height: 10,
                ),
                NotesListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
