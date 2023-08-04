import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    Key? key,
    this.prefix,
    this.suffix,
    this.hint,
    required this.obsecure,
  }) : super(key: key);

  final prefix;
  final suffix;
  final hint;
  final obsecure;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obsecure,
      decoration: InputDecoration(
        prefixIcon: widget.prefix,
        suffixIcon: widget.suffix,
        hintText: widget.hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
