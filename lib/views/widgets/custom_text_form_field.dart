import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/constants/fontsizes.dart';
import 'package:jwero_sales_app/controller/login_form_controller.dart';

class CustomTextFormField extends StatefulWidget {
  final double inputFontSize;
  final double errorFontSize;
  // final double labelFontSize;
  // final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool? obscureText;

  const CustomTextFormField(
      {super.key,
      //required this.labelText,
      required this.inputFontSize,
      required this.errorFontSize,
      // required this.labelFontSize,
      required this.textEditingController,
      this.validator,
      required this.keyboardType,
      this.obscureText});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   setIsobscureText();
  // }

  // void setIsobscureText() {
  //   if (widget.obscureText != null) {
  //     log("widget.obscureText != null ${widget.obscureText != null}");
  //     //customTextFormFieldController.updateObscure(widget.obscureText!);
  //     customTextFormFieldController.rxIsObscureText.value = widget.obscureText!;
  //     //return customTextFormFieldController.rxIsObscureText.value;
  //   } else {
  //     //customTextFormFieldController.updateObscure(false);
  //     customTextFormFieldController.rxIsObscureText.value = false;
  //   }
  // }
  //bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // obscureText: widget.obscureText != null ? widget.obscureText! : false,
      //  obscureText: customTextFormFieldController.rxIsObscureText.value,
      style: TextStyle(fontSize: widget.inputFontSize),
      controller: widget.textEditingController,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      decoration: InputDecoration(
        // suffixIcon: widget.obscureText != null
        //     ? IconButton(
        //         onPressed: () {
        //           log("customTextFormFieldController.rxIsObscureText.value ${customTextFormFieldController.rxIsObscureText.value} ");
        //           // customTextFormFieldController.rxIsObscureText.value =
        //           //     !customTextFormFieldController.rxIsObscureText.value;
        //           customTextFormFieldController.updateObscure(
        //               !customTextFormFieldController.rxIsObscureText.value);
        //         },
        //         icon: Icon(
        //           customTextFormFieldController.rxIsObscureText.value
        //               ? Icons.visibility
        //               : Icons.visibility_off,
        //           size: 35.0,
        //         ),
        //       )
        //     : SizedBox(),
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
