import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_play/myService.dart';

class WidgetA extends StatelessWidget {
  const WidgetA({super.key});

  @override
  Widget build(BuildContext context) {
    MyService myService = Get.find();
    return Container(
      color: Colors.red.withOpacity(0.3),
      child: Center(
        child: OutlinedButton(
          onPressed: () {
            myService.addUser(UserModel(
                city: "춘천", age: "20", height: "168cm", weight: "48kg"));
          },
          child: Text("button"),
        ),
      ),
    );
  }
}
