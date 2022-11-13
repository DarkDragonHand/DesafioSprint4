import 'package:flutter/cupertino.dart';
import 'package:task_list_mobile/model/task.dart';

class TaskController{
  ValueNotifier <List<Task>> taskList = ValueNotifier<List<Task>>([]);
}