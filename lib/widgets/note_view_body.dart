import 'package:flutter/material.dart';

import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    //BlocProvider.of<NotesCubit>(context).fetchNote();
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}
