import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter1/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login api')),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.txtUsername,
              decoration: InputDecoration(label: Text('Username')),
            ),
            TextField(
              controller: controller.txtPassword,
              decoration: InputDecoration(label: Text('Password')),
            ),

            Obx(
              () => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : OutlinedButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: Text('Login'),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
