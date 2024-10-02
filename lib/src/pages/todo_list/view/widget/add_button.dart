import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/pages/todo_list/controller/todo_list_controller.dart/';

class AddButton extends GetView<TodoListController> {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      );
}
