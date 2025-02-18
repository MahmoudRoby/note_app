import 'package:flutter/material.dart';


import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';


class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Notes',
              icon: Icons.check,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(hint: 'title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 6,
            ),
          ],
        ),
      ),
    ));
  }
}
