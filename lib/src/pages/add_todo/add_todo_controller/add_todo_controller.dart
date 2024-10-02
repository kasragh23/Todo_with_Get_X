import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddTodoController extends GetxController {
  final TextEditingController titleTodoController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();


  @override
  void onClose() {
    super.onClose();
    print('it closed!');
    titleTodoController.dispose();
    descriptionController.dispose();
  }

  void returnData() {
    List<String> todo = [
      titleTodoController.text,
      descriptionController.text
    ];
    Get.back<List<String>>(result: todo);
  }

  void returnData2() {
    final Map<String, String> todo_map = {
      'title': titleTodoController.text,
      'description': descriptionController.text,
    };
    Get.back(result: todo_map);
  }

}
