import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/widgets/custom_text.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          EditNotesView.id,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: CustomText(
                text: note.title,
                textSize: 18.sp,
                textWight: FontWeight.w700,
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: CustomText(
                  text: note.subtitle,
                  textWight: FontWeight.w500,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black54,
                  size: 28,
                ),
                onPressed: () {
                  note.delete();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: CustomText(text: note.date),
            ),
          ],
        ),
      ),
    );
  }
}
