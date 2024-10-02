import 'package:get/get.dart';
import 'package:getx/src/pages/add_todo/add_todo_controller/add_todo_controller.dart';


class AddTodoBinding extends Bindings{


  @override
  void dependencies() {
    Get.parameters;
    Get.put(AddTodoController());
  }
}