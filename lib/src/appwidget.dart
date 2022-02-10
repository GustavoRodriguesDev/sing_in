import 'package:flutter/material.dart';
import 'package:sing_in/src/routes/routes.dart';
import 'package:sing_in/src/view/login_page.dart';
import 'package:sing_in/src/view/next_page.dart';

import 'view/sign_up_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        login: (context) => const LoginPage(),
        register: (context) => const SignUpPage(),
        next: (context) => const NextPage()
      },
    );
  }
}
