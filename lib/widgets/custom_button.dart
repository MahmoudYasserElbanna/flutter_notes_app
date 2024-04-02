import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.buttonLabel,
    required this.onTap,
    this.isLoading = false,
  });
  final String? buttonLabel;
  final void Function() onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: kPrimaryColor,
          ),
          child: isLoading
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  buttonLabel!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF3333333),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ),
      ),
    );
  }
}
