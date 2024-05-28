import 'package:flutter/material.dart';

class CustomSecureTextFieldTransparent extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;

  const CustomSecureTextFieldTransparent({
    super.key,
    required this.labelText,
    required this.controller,
  });

  @override
  State<CustomSecureTextFieldTransparent> createState() =>
      _CustomSecureTextFieldTransparentState();
}

class _CustomSecureTextFieldTransparentState
    extends State<CustomSecureTextFieldTransparent> {
  var _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isObscure,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade800,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: IconButton(
            splashRadius: 1,
            icon: Icon(
              color: Colors.black,
              size: 18,
              (_isObscure == true) ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
