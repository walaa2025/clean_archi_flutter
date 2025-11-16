import 'package:clean_archi_flutter/domain/entities/orgenic.dart';
import 'package:clean_archi_flutter/domain/repostries/organic_repo.dart';
import'package:http/http.dart' as http;
class OrganicRepostrImpl extends OrgenicRepostries {
  http.Client client;
  OrganicRepostrImpl({required this.client});
  @override
  Future<void> createOrganic(Orgenic organic) {
    
    throw UnimplementedError();
  }

  @override
  Future<void> deleteOrganic(int id) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<Orgenic>> getAllOrganic() {
    

    throw UnimplementedError();
  }

  @override
  Future<void> updateOrganic(Orgenic organic) {
  
    throw UnimplementedError();
  }
   // Implement repository methods here
 }