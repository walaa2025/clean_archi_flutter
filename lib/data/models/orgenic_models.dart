import 'package:clean_archi_flutter/domain/entities/orgenic.dart';

class OrgenicModels extends Orgenic {
  OrgenicModels({
    required super.title,
    required super.link,
    required super.data,
    required super.snippts,
    required super.position,
  });
  factory OrgenicModels.fromJson(Map<String, dynamic> json) {
    return OrgenicModels(
      title: json['title'],
      link: json['link'],
      snippts: json['snippts'],
      data: json['data'] ?? '__',
      position: json['position'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'link': link,
      'snippts': snippts,
      'data': data,
      'position': position,
    };
  }
}
