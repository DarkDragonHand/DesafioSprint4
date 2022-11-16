import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_list_mobile/components/themes.dart';
import 'package:task_list_mobile/controller/task_simple_preferences.dart';
import 'package:task_list_mobile/controller/theme_controller.dart';
import 'package:task_list_mobile/view/home_screen.dart';
import 'package:task_list_mobile/view/initial_screen.dart';
import 'package:task_list_mobile/view/authentication_screen.dart';
import 'package:task_list_mobile/view/new_task_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await TaskSimplePreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do Task List',
      themeMode: ThemeController().theme, //Tema principal da aplicação

      //Temas personalizados para apertar o botão para light mode ou  mode
      theme: Themes.light,
      darkTheme: Themes.dark,

      initialRoute: "/auth",
      routes: {
        "/initial": (context) => const InitialScreen(),
        "/auth": (context) => AuthenticationScreen(),
        "/home": (context) => HomeScreen(),
        "/newTask": (context) => const NewTaskScreen(),
      },
    );
  }
}
