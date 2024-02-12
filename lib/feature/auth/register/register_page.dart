import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CashfyAppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Text('Register Page'),
      ),
    );
  }
}
