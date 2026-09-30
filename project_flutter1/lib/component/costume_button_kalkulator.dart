import 'package:flutter/material.dart';

class CostumeButtonKalkulator extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CostumeButtonKalkulator({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF9575CD),
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 45),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}