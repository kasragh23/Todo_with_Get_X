import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/todo_list/controller/todo_list_controller.dart';
import 'package:getx/src/todo_list/view/widget/todo_list_item.dart';

class TodoList extends GetView<TodoListController> {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Obx(
          () => ListView.builder(
            itemCount: controller.todos.length,
            itemBuilder: (context, index) =>
                TodoListItem(todo: controller.todos[index]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.addTodo,
          child: const Icon(Icons.add),
        ),

      );
}

// body: Center(
//   child: Column(
//     children: [
//       Obx(() => Text('${controller.count.value}')),
//       const SizedBox(
//         height: 10,
//       ),
//       Obx(() =>  Text(controller.todo.value.description.value)),
//       const SizedBox(
//         height: 10,
//       ),
//       ElevatedButton(
//         onPressed: controller.incrementCount,
//         child: const Icon(Icons.add),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       ElevatedButton(
//         onPressed: controller.editTodo,
//         child: const Icon(Icons.update),
//       )
//     ],
//   ),
// ),
