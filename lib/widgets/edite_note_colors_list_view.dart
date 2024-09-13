import 'package:flutter/material.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/widgets/color_list_view.dart';
import 'package:nots_app/widgets/constants.dart';

class EditeNoteColorList extends StatefulWidget {
  const EditeNoteColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNoteColorList> createState() => _EditeNoteColorListState();
}

class _EditeNoteColorListState extends State<EditeNoteColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  inActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
