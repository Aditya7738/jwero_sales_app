import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final bool rightIcon;
  final bool leftIcon;
  final bool isLoading;
  final Color buttonBackgroundColor;
  final double buttonWidth;
  final double fontSize;
  final IconData? icon;
  final Color circularIndicatorColor;
  final Color textColor;
  final EdgeInsetsGeometry padding;

  const CustomButton(
      {super.key,
      required this.rightIcon,
      required this.leftIcon,
      required this.isLoading,
      required this.buttonWidth,
      required this.fontSize,
      this.icon,
      required this.buttonBackgroundColor,
      required this.text,
      required this.circularIndicatorColor,
      required this.textColor,
      required this.padding});

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
            borderRadius: BorderRadius.circular(7.0)),
        padding: widget.padding,
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
                    backgroundColor: widget.circularIndicatorColor,
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
                      widget.text,
                      style: TextStyle(
                          color: widget.textColor,
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
