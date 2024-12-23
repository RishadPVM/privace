import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:privacy_policy_web/firebase_options.dart';
import 'package:privacy_policy_web/page/aboutApp/about.dart';
import 'package:privacy_policy_web/page/aboutApp/terms_and_conditions.dart';
import 'package:privacy_policy_web/page/aboutApp/privacy_policy.dart';
import 'package:privacy_policy_web/page/deleteRequst/deleteRequst.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
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
        '/delete-account-request':(context)=> DeleteRequestPage()
      },
    );
  }
}
