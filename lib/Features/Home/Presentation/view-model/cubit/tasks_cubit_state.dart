part of 'tasks_cubit_cubit.dart';

@immutable
sealed class TasksCubitState {}

final class TasksCubitInitial extends TasksCubitState {}

final class TasksCubitLoading extends TasksCubitState {}

final class TasksCubitSuccess extends TasksCubitState {
  final List<TaskModel> tasks;
  TasksCubitSuccess({required this.tasks});
}

final class TasksCubitFailed extends TasksCubitState {
  final String errMessages;
  TasksCubitFailed({required this.errMessages});
}
