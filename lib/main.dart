import 'package:flutter/material.dart';
import 'package:privacy_policy_web/page/about.dart';
import 'package:privacy_policy_web/page/terms_and_conditions.dart';
import 'package:privacy_policy_web/page/privacy_policy.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zerbee Policy',
      initialRoute: '/',
      routes: {
        '/': (context) => PrivacyPolicyPage(),
        '/about': (context) => AboutPage(),
        '/terms-and-conditions': (context) => TermsAndConditionsPage(),
      },
    );
  }
}
