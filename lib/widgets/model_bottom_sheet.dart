import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_botes_cubits/add_note_cubit.dart';
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
              if (state is AddNoteFailure) {
                print(('Failed ${state.errMassage}'));
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const SingleChildScrollView(child: AddNoteForm()),
              );
            },
          ),
        ),
      ),
    );
  }
}
