import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cuibt/notes/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchNote();
                Navigator.pop(context);
              },
              title: 'Edit Notes',
              icon: Icons.check,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
                onChanged: (p0) {
                  title = p0;
                },
                hint: widget.note.title),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (p0) => subtitle = p0,
              hint: widget.note.subtitle,
              maxLines: 6,
            ),
          ],
        ),
      ),
    ));
  }
}
