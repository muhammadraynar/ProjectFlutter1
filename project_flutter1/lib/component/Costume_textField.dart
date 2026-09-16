import 'package:flutter/material.dart';

class CostumeTextfield extends StatelessWidget {
  final TextEditingController? textController;
  final String myhint;

  const CostumeTextfield({
    super.key,
    this.textController,
    required this.myhint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: myhint,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        filled: true,
        fillColor: const Color(0xFF121212),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}