import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    required this.labelText,
    this.maxLines,
    this.onSaved,
  });

  final String labelText;
  final int? maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        contentPadding: const EdgeInsets.all(16),
        hintText: labelText,
        hintStyle: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
