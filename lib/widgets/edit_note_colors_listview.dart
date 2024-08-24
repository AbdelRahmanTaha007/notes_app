
import 'package:flutter/material.dart';
import 'package:todu_app/constants.dart';
import 'package:todu_app/models/note_model.dart';
import 'package:todu_app/widgets/colors_item.dart';

class EditNotesColorsList extends StatefulWidget {
  EditNotesColorsList({super.key, required this.note});

  final NotesModel note;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = kColors.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                print(currentIndex);
                print(index);
              });
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
