import 'package:clean_archi_flutter/domain/repostries/organic_repo.dart';

class DeleteOrganicUsecases {
  final OrgenicRepostries organicRepostries;
  DeleteOrganicUsecases(this.organicRepostries);
  Future<void> execute(int id) async {
    return await organicRepostries.deleteOrganic(id);
  }
}