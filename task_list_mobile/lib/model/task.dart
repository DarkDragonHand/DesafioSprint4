class Task {
  final String name;
  final String description;
  final String date;

  Task(this.name, this.description, this.date);

  /*factory Task.fromJson(Map json) {
    return Task(json['name'], json['description'], json['date']);
  }*/
}
