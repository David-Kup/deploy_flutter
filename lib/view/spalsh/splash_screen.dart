// ignore_for_file: deprecated_member_use

import 'package:swift/config/images.dart';
import 'package:swift/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final spalshController = Get.put(SplashController());
  @override
  void initState() {
    spalshController.customInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    DefaultImages.appIcon,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Lightning TraderPro",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
