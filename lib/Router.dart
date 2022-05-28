import 'package:deep_linking_test/home.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Router extends StatefulWidget {
  const Router({Key? key}) : super(key: key);

  @override
  State<Router> createState() => _RouterState();
}

class _RouterState extends State<Router> {
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

  @override
  void initState() {
    super.initState();
    initDynamicLinks();
  }

  Future<void> initDynamicLinks() async {
    print('here');
    dynamicLinks.onLink.listen((dynamicLinkData) {
      print(dynamicLinkData.link);
      print(dynamicLinkData.link.path);
      Get.toNamed(dynamicLinkData.link.path);
    }).onError((error) {
      print('onLink error');
      print(error.message);
      Get.offAllNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
