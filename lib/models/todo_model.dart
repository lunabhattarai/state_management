class ToDo {
  final int id;
  final String title;
  final bool isCompleted;

  ToDo({required this.id, required this.title, required this.isCompleted});

  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
      id: json['id'],
      title: json['todo'],
      isCompleted: json['completed'],
    );
  }
}
