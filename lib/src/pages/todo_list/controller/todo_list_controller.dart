import 'package:get/get.dart';
import 'package:getx/src/infrastructure/route/route_names.dart';
import 'package:getx/src/pages/todo_list/models/todo_view_model.dart';


class TodoListController extends GetxController {
  RxList<TodoViewModel> todos = <TodoViewModel>[].obs;

  int countId = 0;

  void addTodo() async {
    /*todos.add(
      TodoViewModel(
          id: count,
          title: 'title ${count + 1}',
          description: 'description',
          isDone: false),
    );*/
    final result = await Get.toNamed(RouteNames.addTodo);
    if (result != null) {
      todos.add(TodoViewModel(
        id: countId,
        title: result[0],
        description: result[1],
        isDone: false,
      ));
      ++countId;
    }
  }

  Future<void> addTodo2() async {
    final result = await Get.toNamed(RouteNames.addTodo);
    if (result != null) {
      final newTodo = TodoViewModel(
        id: ++countId,
        title: result['title']!,
        description: result['description']!,
        isDone: false,
      );

      todos.add(result);
    }
  }

  void onDoneChanged({
    required int todoId,
    required bool newValue,
  }) {
    final int index = todos.indexWhere((element) => element.id == todoId);

    final TodoViewModel newTodo = todos[index].copyWith(isDone: newValue);

    todos[index] = newTodo;
  }

  void deleteTodo(
    int todoId,
  ) {
    int index = todos.indexWhere((element) => element.id == todoId);
    if (!todos[index].isDone) {
      todos.removeAt(index);
    }
  }

//check copyWith()
// void onDoneChanged2() {
//   final TodoViewModel firstTodo = TodoViewModel(
//     id: 1,
//     title: 'title',
//     description: 'description',
//     isDone: false,
//   );
//
//
// final TodoViewModel secondTodo = TodoViewModel(
//   id: 2,
//   title: 'newTitle',
//   description: 'description',
//   isDone: false,
// );
// print(firstTodo);
// print(secondTodo);
// }
}
