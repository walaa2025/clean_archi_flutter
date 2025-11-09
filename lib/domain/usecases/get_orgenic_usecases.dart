import 'package:clean_archi_flutter/domain/repostries/organic_repo.dart';
import 'package:clean_archi_flutter/domain/entities/orgenic.dart';

class GetOrgenicUsecases {
  final OrgenicRepostries organicRepostries;
  GetOrgenicUsecases(this.organicRepostries);
  Future<List<Orgenic>> execute() async {
    return await organicRepostries.getAllOrganic();
  }
}