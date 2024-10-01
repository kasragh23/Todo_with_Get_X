import 'package:get/get.dart';
import 'package:getx/src/todo_list/models/todo_view_model.dart';

class TodoListController extends GetxController {
  RxList<TodoViewModel> todos = <TodoViewModel>[].obs;

  int count = 0;


    void addTodo() {
      todos.add(
        TodoViewModel(
            id: count,
            title: 'title ${count + 1}',
            description: 'description',
            isDone: false),
      );
      count++;
    }

    void onDoneChanged({
      required int todoId,
      required bool newValue,
    }) {
      final int index = todos.indexWhere((element) => element.id == todoId);

      final TodoViewModel newTodo = todos[index].copyWith(isDone: newValue);

      todos[index] = newTodo;
    }

    void deleteTodo(int todoId, bool isDone) {
      if (isDone) {
        todos.removeWhere((element) => element.id == todoId);
      }
    }
  }