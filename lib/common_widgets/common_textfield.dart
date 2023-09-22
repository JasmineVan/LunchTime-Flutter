import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  final String textFieldLabelText;
  final TextInputType textInputType;
  bool obscureText;
  TextEditingController textEditingController;
  Icon prefixIcon;
  int maxLengthInput;


  CommonTextField({super.key,
    required this.textFieldLabelText,
    required this.textInputType,
    this.obscureText = false,
    required this.textEditingController,
    this.prefixIcon = const Icon(Icons.verified),
    this.maxLengthInput = 16,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.0,
      child: TextField(
        textInputAction:  TextInputAction.next,
        keyboardType: widget.textInputType,
        maxLength: widget.maxLengthInput,
        controller: widget.textEditingController,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 3, color: Colors.red),
            borderRadius: BorderRadius.circular(16.0),
          ),
          labelText: widget.textFieldLabelText,
        ),
      ),
    );
  }
}
