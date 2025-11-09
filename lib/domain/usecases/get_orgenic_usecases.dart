import 'package:clean_archi_flutter/domain/repostries/organic_repo.dart';
import 'package:clean_archi_flutter/domain/entities/orgenic.dart';

class GetOrgenicUsecases {
  final OrgenicRepostries organicRepostriess;
  GetOrgenicUsecases(this.organicRepostriess);
  Future<List<Orgenic>> execute() async {
    return await organicRepostriess.getAllOrganic();
  }
}