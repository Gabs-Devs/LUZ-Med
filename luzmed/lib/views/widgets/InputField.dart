import 'package:flutter/material.dart';

class InputWidgetEmail extends StatefulWidget {
  final String emailLabelText;
  final String emailHintText;

  InputWidgetEmail({
    this.emailLabelText = "Email",
    this.emailHintText = "Coloque seu email",
  });

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidgetEmail> {
  @override
  Widget build(BuildContext context) {
    bool isEmailRequired = widget.emailLabelText.isNotEmpty;

    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 239, 255, 20),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildEmailInput(widget.emailLabelText, widget.emailHintText, isEmailRequired),
          SizedBox(height: 2),
        ],
      ),
    );
  }

  Widget _buildEmailInput(String labelText, String hintText, bool isRequired) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isRequired ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ],
    );
  }
}