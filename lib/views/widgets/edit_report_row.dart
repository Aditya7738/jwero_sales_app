import 'package:flutter/material.dart';

class EditReportRow extends StatefulWidget {
  final Color ansTextColor;
  final String questionText;
  final String ansText;
  const EditReportRow(
      {super.key,
      required this.ansTextColor,
      required this.questionText,
      required this.ansText});

  @override
  State<EditReportRow> createState() => _EditReportRowState();
}

class _EditReportRowState extends State<EditReportRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.questionText,
          style: TextStyle(
            color: Color(0xFF555770),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.32,
          ),
        ),
        Text(
          widget.ansText,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: widget.ansTextColor,
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
            letterSpacing: -0.32,
          ),
        )
      ],
    );
  }
}
