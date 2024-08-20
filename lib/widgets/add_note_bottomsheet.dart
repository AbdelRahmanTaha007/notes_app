
import 'package:flutter/material.dart';

import 'package:todu_app/widgets/custom_button.dart';
import 'package:todu_app/widgets/custom_text_field.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
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
              maxLines: 5,
            ),
            SizedBox(
              height: 35,
            ),
            CustomButton(),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}