import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nots_app/cubits/cubit/notes_cubit.dart';
import 'package:nots_app/widgets/add_note_form.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteBottemSheet extends StatefulWidget {
  const AddNoteBottemSheet({super.key});

  @override
  State<AddNoteBottemSheet> createState() => _AddNoteBottemSheetState();
}

class _AddNoteBottemSheetState extends State<AddNoteBottemSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            debugPrint('faild ${state.errMessage}');
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: false,
              child: AbsorbPointer(
                absorbing: State is AddNoteLoading ? true : false,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const SingleChildScrollView(child: AddNoteForm()),
                ),
              ));
        },
      ),
    );
  }
}
