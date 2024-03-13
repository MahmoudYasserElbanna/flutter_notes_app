import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: const Column(
          children: [
            CustomTextField(labelText: 'Title'),
          ],
        ),
      ),
    );
  }
}
