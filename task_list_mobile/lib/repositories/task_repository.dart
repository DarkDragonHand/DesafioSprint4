import 'package:task_list_mobile/model/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getList();
}
