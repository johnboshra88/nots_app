import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/cubit/notes_cubit.dart';
import 'package:nots_app/models/note_model.dart';

import 'package:nots_app/widgets/custom_app_bar.dart';
import 'package:nots_app/widgets/custome_text_field.dart';
import 'package:nots_app/widgets/edite_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edite Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomeTextField(
            onChange: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomeTextField(
            onChange: (value) {
              content = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          EditeNoteColorList(
            note: widget.note,
          )
        ],
      ),
    );
  }
}
