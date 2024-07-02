import 'package:flutter/material.dart';
import 'package:jwero_sales_app/constants/fontsizes.dart';

class CustomTextFormField extends StatefulWidget {
  final double inputFontSize;
  final double errorFontSize;
  // final double labelFontSize;
  // final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController textEditingController;

  const CustomTextFormField(
      {super.key,
      //required this.labelText,
      required this.inputFontSize,
      required this.errorFontSize,
      // required this.labelFontSize,
      required this.textEditingController,
      this.validator});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: widget.inputFontSize),
      controller: widget.textEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: widget.validator,
      decoration: InputDecoration(
        errorStyle:
            TextStyle(fontSize: widget.errorFontSize, color: Colors.red),
        // labelStyle: TextStyle(fontSize: widget.labelFontSize),
        // // errorText: ,
        // labelText: widget.labelText,
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 221, 221, 221),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
    );
  }
}
