import 'package:flutter/material.dart';

class CustomEdit extends StatelessWidget {

  final String label;
  final Icon icone;
  final bool isObscure;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final double radius;

  const CustomEdit({super.key, required this.label, required this.icone, required this.isObscure, this.validator, this.controller, required this.radius});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isObscure,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        prefix: icone,
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}