import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todu_app/controllers/add_note/add_note_cubit.dart';
import 'package:todu_app/models/note_model.dart';
import 'package:todu_app/widgets/colors_list_view.dart';
import 'package:todu_app/widgets/custom_button.dart';
import 'package:todu_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidate = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidate,
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: const ColorsListView(),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  setState(() {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      NotesModel noteModel = NotesModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: "Hello",
                          color: Colors.amber.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autoValidate = AutovalidateMode.always;
                    }
                  });
                },
              );
            },
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
