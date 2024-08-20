import 'package:flutter/material.dart';
import 'package:todu_app/views/edit_note_view.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNoteView(),
            ));
      },
      child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 0, left: 15),
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: Color(0xFFFFCD7A),
              borderRadius: BorderRadius.circular(18)),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                title: Text(
                  maxLines: 1,
                  "Hello There",
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
                    "Build your Career with This Project ,Hello Im a developer",
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 22,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, size: 35, color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15.0),
                child: Text(
                  "May 21, 2022",
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
