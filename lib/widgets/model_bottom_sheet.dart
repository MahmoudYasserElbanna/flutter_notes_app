import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // We can't use Spacer widget in SingleChildScrollView
        // SingleChildScrollView -> Shrink
        // Spacer -> Expand
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.h),
              const CustomTextField(labelText: 'Title'),
              SizedBox(height: 16.h),
              const CustomTextField(
                labelText: 'Content',
                maxLines: 5,
              ),
              SizedBox(height: 42.h),
              const CustomButton(buttonLabel: 'Add'),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
