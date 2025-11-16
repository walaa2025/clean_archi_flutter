import 'dart:convert';
import 'package:clean_archi_flutter/data/models/orgenic_models.dart';
import 'package:flutter/services.dart';
abstract class OrgenicDataSource {
  Future<List<OrgenicModels>> fetchLocalData();
}

class LocalDataSourceImpl implements OrgenicDataSource {
  @override
  Future<List<OrgenicModels>> fetchLocalData() async {
    final jsonString = await rootBundle.loadString('assets/data.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((item) => OrgenicModels.fromJson(item)).toList();
  }
}