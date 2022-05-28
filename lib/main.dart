import 'package:deep_linking_test/Helpers/get_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyDeepLinkingApp());
}

class MyDeepLinkingApp extends StatefulWidget {
  const MyDeepLinkingApp({Key? key}) : super(key: key);

  @override
  _MyDeepLinkingAppState createState() => _MyDeepLinkingAppState();
}

class _MyDeepLinkingAppState extends State<MyDeepLinkingApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get Route Managment',
      initialRoute: '/router',
      getPages: appRoutes(),
    );
  }
}
