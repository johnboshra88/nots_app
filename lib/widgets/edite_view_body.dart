import 'package:flutter/material.dart';
import 'package:nots_app/widgets/custom_app_bar.dart';
import 'package:nots_app/widgets/custome_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edite Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomeTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 30,
          ),
          CustomeTextField(
            hint: 'content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
