import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/notes_list_items.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16),
      child: Column(
        children: [
          const CustomAppBar(
            label: 'Notes',
            icon: FontAwesomeIcons.magnifyingGlass,
          ),
          SizedBox(height: 16.h),
          const Expanded(child: NotesListItems()),
        ],
      ),
    );
  }
}
