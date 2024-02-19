import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../core/utils/extensions.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Profile page', style: context.xText.title3),
    );
  }
}
