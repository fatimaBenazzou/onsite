// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      deadline: json['deadline'] as String?,
      end: json['end'],
      start: json['start'] as String?,
      status: json['status'] as String?,
      validationType: json['validation_type'] as String?,
      priority: json['priority'] as String?,
      location: json['location'] as String?,
      color: json['color'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      projectId: (json['project_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      path: json['path'],
    );

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'deadline': instance.deadline,
      'end': instance.end,
      'start': instance.start,
      'status': instance.status,
      'validation_type': instance.validationType,
      'priority': instance.priority,
      'location': instance.location,
      'color': instance.color,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'project_id': instance.projectId,
      'user_id': instance.userId,
      'path': instance.path,
    };
