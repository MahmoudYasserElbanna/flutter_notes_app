import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.labelText,
    this.maxLines,
  });

  final String labelText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: TextField(
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
