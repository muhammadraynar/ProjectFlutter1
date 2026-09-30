import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CostumeTextfield extends StatelessWidget {
  final TextEditingController? textController;
  final String myhint;
  final TextInputType? keyboardType; // Properti opsional
  final List<TextInputFormatter>? inputFormatters; // Properti opsional

  const CostumeTextfield({
    super.key,
    this.textController,
    required this.myhint,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      keyboardType: keyboardType, // Fleksibel (default: text biasa)
      inputFormatters: inputFormatters, // Fleksibel
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