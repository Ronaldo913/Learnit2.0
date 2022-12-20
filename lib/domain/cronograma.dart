import 'dart:developer';

class Cronograma {
  late final String title;
  late final String hour;
  late final String minute;
  late final String day;
  late final String color;


  Cronograma({
    required this.title,
    required this.hour,
    required this.minute,
    required this.day,
    required this.color,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = title;
    data['hour'] = hour;
    data['minute'] = minute;
    data['day'] = day;
    data['color'] = color.toString();

    return data;
  }

  Cronograma.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    hour = json['hour'];
    minute = json['minute'];
    day = json['day'];
    color = json['color'];

  }

    Cronograma.fromApiJson(Map<String, dynamic> json) {
      title = json['title'];
      hour = json['hour'];
      minute = json['minute'];
      day = json['day'];
      color = json['color'];
  }

}
