import 'package:clean_archi_flutter/domain/entities/orgenic.dart';
import 'package:clean_archi_flutter/domain/repostries/organic_repo.dart';

class UpdateOrganicUsecase{
  final OrgenicRepostries organicRepostries;
  UpdateOrganicUsecase(this.organicRepostries);
  Future<void> execute(Orgenic organic) async {
    return await organicRepostries.updateOrganic(organic);
  }
}