import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final bool rightIcon;
  final bool leftIcon;
  final bool isLoading;
  final Color buttonBackgroundColor;
  final double buttonWidth;
  final double fontSize;
  final IconData? icon;

  const CustomButton(
      {super.key,
      required this.rightIcon,
      required this.leftIcon,
      required this.isLoading,
      required this.buttonWidth,
      required this.fontSize,
      this.icon,
      required this.buttonBackgroundColor});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        //TODO: give height to button container after it start loading
        width: widget.buttonWidth,
        decoration: BoxDecoration(
            color: widget.buttonBackgroundColor,
            borderRadius: BorderRadius.circular(15.0)),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Center(
          child: widget.isLoading
              ? Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  width: 20.0,
                  height: 30.0,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2.0,
                    backgroundColor: Color(0xffCC868A),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.leftIcon
                        ? Icon(
                            widget.icon,
                            color: Colors.white,
                          )
                        : SizedBox(),
                    Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: widget.fontSize),
                    ),
                    widget.rightIcon
                        ? Icon(
                            widget.icon,
                            color: Colors.white,
                          )
                        : SizedBox(),
                  ],
                ),
        ));
  }
}
