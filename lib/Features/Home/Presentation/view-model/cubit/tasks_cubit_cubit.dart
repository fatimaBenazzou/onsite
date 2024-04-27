import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:onsite/Core/helpers/Failure.dart';
import 'package:onsite/Features/Home/Data/Model/task_model/task_model.dart';
import 'package:onsite/Features/Home/Data/domain/repo/TaskServiceRepo.dart';

import '../../../../../Core/helpers/ApiServices.dart';

part 'tasks_cubit_state.dart';

class TasksCubitCubit extends Cubit<TasksCubitState> {
  TasksCubitCubit(this.apiServcie) : super(TasksCubitInitial());
  final ApiService apiServcie;
  final loggger = Logger();

  Future<void> getTasks() async {
    emit(TasksCubitLoading());
    try {
      final response = await TaskServiceRepo(apiService: apiServcie).getTasks();
      loggger.t(response);
      emit(TasksCubitSuccess(tasks: response));
    } on HandleError catch (e) {
      loggger.e(e.message);
      emit(TasksCubitFailed(errMessages: e.toString()));
    } catch (e) {
      loggger.e(e);
      emit(TasksCubitFailed(errMessages: e.toString()));
    }
  }
}
