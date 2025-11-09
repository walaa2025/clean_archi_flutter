import 'package:clean_archi_flutter/domain/entities/orgenic.dart';

abstract class OrgenicRepostries{
 
  Future<List<Orgenic>>getAllOrganic();
  Future<void>createOrganic(Orgenic organic);
  Future<void>updateOrganic(Orgenic organic);
  Future<void>deleteOrganic(int id);
 
}