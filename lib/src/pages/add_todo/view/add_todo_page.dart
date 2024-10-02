import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx/src/pages/add_todo/add_todo_controller/add_todo_controller.dart';

class AddTodoPage extends GetView<AddTodoController> {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller.titleTodoController,
                decoration: InputDecoration(
                    labelText: 'add title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              TextField(
                controller: controller.descriptionController,
                decoration: InputDecoration(
                  labelText: 'add description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: controller.returnData,
                child: Icon(Icons.check),
              )
            ],
          ),
        ),
      );
}
