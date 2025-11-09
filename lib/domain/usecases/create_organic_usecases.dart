import 'package:clean_archi_flutter/domain/repostries/organic_repo.dart';
import 'package:clean_archi_flutter/domain/entities/orgenic.dart';

class PostOrgenicUsecases {
final OrgenicRepostries organicRepostries;
  PostOrgenicUsecases(this.organicRepostries);
  Future<void> execute(Orgenic organic) async {
    return await organicRepostries.createOrganic(organic);
  }
}