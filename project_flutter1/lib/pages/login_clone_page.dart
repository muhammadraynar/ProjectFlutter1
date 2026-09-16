import 'package:flutter/material.dart';
import 'package:project_flutter1/component/costume_textField.dart';
import 'package:project_flutter1/component/costume_button.dart';
import 'package:project_flutter1/component/title_text.dart';
import 'package:project_flutter1/component/label_text.dart';
import 'package:project_flutter1/component/link_button.dart';
import 'package:project_flutter1/component/sub_text.dart';
import 'package:project_flutter1/component/secondary_button.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                // Logo Spotify
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/7/71/Spotify.png',
                  width: 90,
                  height: 90,
                ),

                const SizedBox(height: 25),

                // Judul
                const TitleText(text: 'WELCOME BACK'),

                const SizedBox(height: 40),

                // Label Email
                const LabelText(text: 'Email or username'),

                const SizedBox(height: 8),

                // Custom Input Email
                const CostumeTextfield(myhint: 'Email or username'),

                const SizedBox(height: 20),

                // Label Password
                const LabelText(text: 'Password'),

                const SizedBox(height: 8),
                // Custom Input Password

                const SizedBox(height: 8),

                // Custom Input Password
                const CostumeTextfield(myhint: 'Password'),

                const SizedBox(height: 30),

                // Custom Button Log In
                const CustomButton(text: 'Log In'),

                const SizedBox(height: 20),

                // Forgot Password
                // Forgot Password menggunakan komponen LinkButton
                const LinkButton(text: 'Forgot your password?'),

                const SizedBox(height: 70),

                // Belum punya akun
                // Belum punya akun menggunakan komponen SubText
                const SubText(text: "Don't have an account?"),

                const SizedBox(height: 12),

                // Tombol Sign Up
                SizedBox(
                  height: 48,
                  child: SizedBox.expand(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: SecondaryButton(text: 'Sign up for Spotify'),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
