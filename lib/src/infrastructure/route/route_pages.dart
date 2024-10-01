import 'package:get/get.dart';
import 'package:getx/src/infrastructure/route/route_names.dart';
import 'package:getx/src/todo_list/commons/todo_list_binding.dart';
import 'package:getx/src/todo_list/view/todo_list_page.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
      name: RouteNames.todoList,
      page: () => const TodoList(),
      binding: TodoListBinding(),
    )
  ];
}
