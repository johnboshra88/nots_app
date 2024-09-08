import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nots_app/widgets/add_note_form.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteBottemSheet extends StatefulWidget {
  AddNoteBottemSheet({super.key});

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
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return const ModalProgressHUD(
              inAsyncCall: false,
              child: AbsorbPointer(
                absorbing: State is AddNoteLoading ? true : false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(child: AddNoteForm()),
                ),
              ));
        },
      ),
    );
  }
}
