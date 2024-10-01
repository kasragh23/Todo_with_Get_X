import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/todo_list/models/todo_view_model.dart';
import 'package:getx/src/todo_list/controller/todo_list_controller.dart';

class TodoListItem extends GetView<TodoListController> {
  const TodoListItem({
    super.key,
    required this.todo,
  });

  final TodoViewModel todo;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(todo.title),
          tileColor: const Color.fromARGB(37, 100, 100, 180),
          subtitle: Text(
            todo.description,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 10,
            ),
          ),
          leading: Switch(
            value: todo.isDone,
            onChanged: (bool value) => controller.onDoneChanged(
              todoId: todo.id,
              newValue: value,
            ),
          ),
          trailing: IconButton(
            onPressed: () => controller.deleteTodo(todo.id, todo.isDone == false),
            icon: const Icon(Icons.delete),
          ),
        ),
      );
}
