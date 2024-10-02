import 'package:get/get.dart';
import 'package:getx/src/infrastructure/route/route_path.dart';
import 'package:getx/src/pages/add_todo/commons/add_todo_binding.dart';
import 'package:getx/src/pages/todo_list/commons/todo_list_binding.dart';
import 'package:getx/src/pages/todo_list/view/todo_list_page.dart';

import '../../pages/add_todo/view/add_todo_page.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
      name: RoutePath.todoList,
      page: () => const TodoList(),
      binding: TodoListBinding(),
      children: [
        GetPage(
          name: RoutePath.addTodo,
          page: () => AddTodoPage(),
          binding: AddTodoBinding(),
        ),
      ],
    )
  ];
}
