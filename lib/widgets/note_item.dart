import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widgets/custom_text.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      decoration: BoxDecoration(
        color: const Color(0xFFFFCD7A),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: CustomText(
              text: 'Flutter Notes',
              textSize: 18.sp,
              textWight: FontWeight.w700,
            ),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: const CustomText(
                text: 'Important Notes About Flutter Widgets',
                textWight: FontWeight.w500,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black54,
                size: 28,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: const CustomText(text: 'March14, 2024'),
          ),
        ],
      ),
    );
  }
}
