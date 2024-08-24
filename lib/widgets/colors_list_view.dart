import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todu_app/controllers/add_note/add_note_cubit.dart';
import 'package:todu_app/widgets/colors_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Color(0xffA7BED3),
    Color(0xffc6e2e9),
    Color(0xfff1ffc4),
    Color(0xffffcaaf),
    Color(0xffdab894),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                print(currentIndex);
                print(index);
              });
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
