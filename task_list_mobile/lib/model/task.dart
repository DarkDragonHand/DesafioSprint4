class Task {
  String? title;
  String? note;
  String? date;
  String? startTime;
  String? endTime;

  Task(this.title, this.note, this.date, this.startTime, this.endTime);

  Task.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    note = json["note"];
    date = json["date"];
    startTime = json["startTime"];
    endTime = json["endTime"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["title"] = title;
    data["note"] = note;
    data["date"] = date;
    data["startTime"] = startTime;
    data["endTime"] = endTime;
    return data;
  }
}
