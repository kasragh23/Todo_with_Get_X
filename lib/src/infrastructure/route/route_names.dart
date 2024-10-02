import 'package:getx/src/infrastructure/route/route_path.dart';

class RouteNames {
  static const String todoList = RoutePath.todoList;
  static  String addTodo = '${RoutePath.todoList}${RoutePath.addTodo}';
  static  String editTodo = '${RoutePath.todoList}${RouteNames.editTodo}';
}