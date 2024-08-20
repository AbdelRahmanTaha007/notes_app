import 'package:flutter/material.dart';
import 'package:todu_app/widgets/custom_appbar.dart';
import 'package:todu_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.done,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(hint: "title"),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
