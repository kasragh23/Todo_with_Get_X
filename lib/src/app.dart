import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/infrastructure/route/route_names.dart';
import 'package:getx/src/infrastructure/route/route_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: RouteNames.todoList,
    getPages: RoutePages.pages,
  );
}
