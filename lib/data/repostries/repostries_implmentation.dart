import 'package:clean_archi_flutter/domain/entities/orgenic.dart';
import 'package:clean_archi_flutter/domain/repostries/organic_repo.dart';
import'package:http/http.dart' as http;
class OrganicRepostrImpl extends OrgenicRepostries {
  http.Client client;
  OrganicRepostrImpl({required this.client});
  @override
  Future<void> createOrganic(Orgenic organic) {
    // TODO: implement createOrganic
    throw UnimplementedError();
  }

  @override
  Future<void> deleteOrganic(int id) {
    // TODO: implement deleteOrganic
    throw UnimplementedError();
  }

  @override
  Future<List<Orgenic>> getAllOrganic() {
    // TODO: implement getAllOrganic

    throw UnimplementedError();
  }

  @override
  Future<void> updateOrganic(Orgenic organic) {
    // TODO: implement updateOrganic
    throw UnimplementedError();
  }
   // Implement repository methods here
 }