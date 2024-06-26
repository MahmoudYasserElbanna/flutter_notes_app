import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/add_notes_cubits/add_note_cubit.dart';
import 'package:note_app/cubits/notes_cubit/note_cubit.dart';
import 'package:note_app/widgets/add_note_form.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Container(
          // We can't use Spacer widget in SingleChildScrollView
          // SingleChildScrollView -> Shrink
          // Spacer -> Expand
          child: BlocConsumer<AddNotesCubit, AddNoteState>(
            listener: (context, state) {
              // Switch between sates in UI
              if (state is AddNoteFailure) {}
              if (state is AddNoteSuccess) {
                BlocProvider.of<NotesCubit>(context).fetchNotes();
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: const SingleChildScrollView(child: AddNoteForm()),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
