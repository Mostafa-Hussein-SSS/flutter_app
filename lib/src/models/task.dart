// File: models/task.dart
class Task {
  final String title;
  final DateTime dueDate;
  final String priority;
  bool isCompleted;

  Task({
    required this.title,
    required this.dueDate,
    this.priority = 'Medium',
    this.isCompleted = false,
  });

  // Factory method to create a Task from JSON
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'],
      dueDate: DateTime.parse(json['dueDate']),
      priority: json['priority'] ?? 'Medium',
      isCompleted: json['isCompleted'] ?? false,
    );
  }

  // Convert Task object to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'dueDate': dueDate.toIso8601String(),
      'priority': priority,
      'isCompleted': isCompleted,
    };
  }
}
