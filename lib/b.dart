import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_play/myService.dart';

class WidgetB extends StatelessWidget {
  const WidgetB({super.key});

  @override
  Widget build(BuildContext context) {
    MyService myService = Get.find();
    return Container(
      color: Colors.blue.withOpacity(0.3),
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: myService.userList.value.length,
                  itemBuilder: (context, index) => Container(
                    color: Colors.green.withOpacity(0.3),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(myService.userList.value[index].city),
                        SizedBox(width: 20),
                        Text(myService.userList.value[index].age),
                        SizedBox(width: 20),
                        Text(myService.userList.value[index].height),
                        SizedBox(width: 20),
                        Text(myService.userList.value[index].weight),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Text(myService.userList.value.length.toString()),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
