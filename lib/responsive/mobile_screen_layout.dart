import 'package:flutter/material.dart';
import 'package:instagram_flutter_clone/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../models/User.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
      body: Center(
        child: Text(
          "UserName: ${user.username}"
          "Email: ${user.email}",
        ),
      ),
    );
  }
}
