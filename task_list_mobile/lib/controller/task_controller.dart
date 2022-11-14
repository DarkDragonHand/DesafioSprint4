import 'package:flutter/cupertino.dart';
import 'package:task_list_mobile/model/task.dart';
import 'package:task_list_mobile/repositories/task_repository.dart';

class TaskController {
  final TaskRepository taskRepository;
  TaskController(this.taskRepository);

  ValueNotifier<List<Task>> taskList = ValueNotifier<List<Task>>([]);

  fetch() async {
    taskList.value = await taskRepository.getList();
  }
}
