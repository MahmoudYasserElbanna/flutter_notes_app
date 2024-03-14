import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16),
        child: Column(children: [
          const CustomAppBar(
            label: 'Edit Note',
            icon: FontAwesomeIcons.check,
          ),
          SizedBox(height: 24.h),
          const CustomTextField(labelText: 'Title'),
          SizedBox(height: 16.h),
          const CustomTextField(
            labelText: 'Content',
            maxLines: 5,
          ),
        ]),
      ),
    );
  }
}
