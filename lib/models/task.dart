import 'package:flutter/material.dart';

class Task {
  const Task({
    required this.id,
    required this.name,
    required this.projectId,
    this.color = Colors.green,
    required this.status,
    required this.validationType,
    required this.endTime,
    required this.startTime,
    required this.deadline,
  });

  final String id;
  final String name;
  final String projectId;
  final Color color;
  final Status status;
  final ValidationType validationType;
  final DateTime endTime;
  final DateTime startTime;
  final DateTime deadline;
}

enum Status { pending, done }

enum ValidationType { file, picture, none }
