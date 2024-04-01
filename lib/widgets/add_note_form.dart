import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/add_botes_cubits/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 24.h),
          CustomFormTextField(
            labelText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16.h),
          CustomFormTextField(
            labelText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          SizedBox(height: 42.h),
          CustomButton(
            buttonLabel: 'Add',
            onTap: () {
              // Check state of filed
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // Bloc Trigger
                var note = NoteModel(
                  title: title!,
                  subtitle: content!,
                  date: DateTime.now().toString(),
                  color: Colors.blueAccent.value,
                );
                BlocProvider.of<AddNotesCubit>(context).addNote(note);
              }
              // if filed is empty return error massage
              else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }
}
