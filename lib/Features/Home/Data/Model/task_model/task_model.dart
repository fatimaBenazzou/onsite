import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';

@JsonSerializable()
class TaskModel {
  int? id;
  String? name;
  String? deadline;
  dynamic end;
  String? start;
  String? status;
  @JsonKey(name: 'validation_type')
  String? validationType;
  String? priority;
  String? location;
  String? color;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @JsonKey(name: 'project_id')
  int? projectId;
  @JsonKey(name: 'user_id')
  int? userId;
  dynamic path;

  TaskModel({
    this.id,
    this.name,
    this.deadline,
    this.end,
    this.start,
    this.status,
    this.validationType,
    this.priority,
    this.location,
    this.color,
    this.createdAt,
    this.updatedAt,
    this.projectId,
    this.userId,
    this.path,
  });

  @override
  String toString() {
    return 'TaskModel(id: $id, name: $name, deadline: $deadline, end: $end, start: $start, status: $status, validationType: $validationType, priority: $priority, location: $location, color: $color, createdAt: $createdAt, updatedAt: $updatedAt, projectId: $projectId, userId: $userId, path: $path)';
  }

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return _$TaskModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);

  TaskModel copyWith({
    int? id,
    String? name,
    String? deadline,
    dynamic end,
    String? start,
    String? status,
    String? validationType,
    String? priority,
    String? location,
    String? color,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? projectId,
    int? userId,
    dynamic path,
  }) {
    return TaskModel(
      id: id ?? this.id,
      name: name ?? this.name,
      deadline: deadline ?? this.deadline,
      end: end ?? this.end,
      start: start ?? this.start,
      status: status ?? this.status,
      validationType: validationType ?? this.validationType,
      priority: priority ?? this.priority,
      location: location ?? this.location,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      projectId: projectId ?? this.projectId,
      userId: userId ?? this.userId,
      path: path ?? this.path,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! TaskModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      deadline.hashCode ^
      end.hashCode ^
      start.hashCode ^
      status.hashCode ^
      validationType.hashCode ^
      priority.hashCode ^
      location.hashCode ^
      color.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      projectId.hashCode ^
      userId.hashCode ^
      path.hashCode;
}
