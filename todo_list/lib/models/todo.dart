import 'dart:convert';

List<Todo> todoFromJson(String str) =>
    List<Todo>.from(json.decode(str).map((x) => Todo.fromJson(x)));

String todoToJson(List<Todo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Todo {
  int? id;
  String? task;
  bool? completed;

  Todo({
    this.id,
    this.task,
    this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        id: json["id"],
        task: json["task"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "task": task,
        "completed": completed,
      };
}
