import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/third');
                },
                child: Text("Navigate to third")),
            SizedBox(),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
