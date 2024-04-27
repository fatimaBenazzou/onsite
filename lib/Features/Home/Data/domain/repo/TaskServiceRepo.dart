
import 'package:logger/logger.dart';
import 'package:onsite/Core/helpers/ApiConstatts.dart';
import 'package:onsite/Core/helpers/ApiServices.dart';
import 'package:onsite/Core/helpers/Failure.dart';
import 'package:onsite/Features/Home/Data/Model/task_model/task_model.dart';
import 'package:onsite/Features/Home/Data/domain/Service/TasksService.dart';

class TaskServiceRepo implements TaskServices {
  final ApiService apiService;
  TaskServiceRepo({required this.apiService});
  final logger = Logger();

  @override
  Future<List<TaskModel>> getTasks() async {
    final reponse = await apiService.get(endPoint: ApiConstants.tasks);
    logger.i(reponse.data);
    if (reponse.statusCode == 200) {
      final data = reponse.data;
      logger.i(data);
      List<TaskModel> tasks = [];
      for (var item in data) {
        tasks.add(TaskModel.fromJson(item));
      }
      return tasks;
    } else {
      throw HandleError("Something went wrong");
    }
  }
}
