import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          contentPadding: const EdgeInsets.all(20),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
