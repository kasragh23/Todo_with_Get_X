import 'package:get/get.dart';
import 'package:getx/src/todo_list/controller/todo_list_controller.dart';

class TodoListBinding extends Bindings{

  @override
  void dependencies(){
    Get.put(TodoListController());
  }
}