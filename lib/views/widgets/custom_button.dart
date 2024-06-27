import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final bool rightIcon;
  final bool leftIcon;
  final bool isLoading;
  final double? width;
  final double? height;
  final double fontSize;
  final IconData? icon;

  const CustomButton(
      {super.key,
      required this.rightIcon,
      required this.leftIcon,
      required this.isLoading,
      this.width,
      this.height,
      required this.fontSize,
      this.icon});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //TODO: give height to button container after it start loading

        decoration: BoxDecoration(
            color: const Color(0xffCC868A),
            borderRadius: BorderRadius.circular(15.0)),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Center(
          child: widget.isLoading
              ? Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  width: widget.width!,
                  height: widget.height!,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2.0,
                    backgroundColor: Color(0xffCC868A),
                  ),
                )
              : Row(
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
