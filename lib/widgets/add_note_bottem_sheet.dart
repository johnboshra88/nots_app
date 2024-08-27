import 'package:flutter/material.dart';
import 'package:nots_app/widgets/custome_text_field.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomeTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 16,
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
