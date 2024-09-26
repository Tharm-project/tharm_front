import 'package:flutter/material.dart';

class DefaultInputForm extends StatelessWidget {
  const DefaultInputForm({
    super.key,
    required this.controller,
    required this.labelText,
    this.obscureText,
    this.keyboardType,
  });

  final TextEditingController controller;
  final String labelText;
  final bool? obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290,
      height: 50,
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Color(0xffAEAEAE),
            // color: Color(0xffAEAEAE),
            fontSize: 14,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide:
                BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
          ),
        ),
      ),
    );
  }
}
