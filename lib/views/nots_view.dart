import 'package:flutter/material.dart';
import 'package:nots_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( ,
        backgroundColor: const Color.fromARGB(255, 6, 243, 207),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: NotsViewBody(),
    );
  }
}
