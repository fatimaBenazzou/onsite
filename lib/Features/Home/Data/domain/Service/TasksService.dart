import 'package:onsite/Features/Home/Data/Model/task_model/task_model.dart';

abstract class TaskServices {
  Future<List<TaskModel>> getTasks();

}
