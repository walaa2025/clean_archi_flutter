import 'dart:async';
import 'package:clean_archi_flutter/data/repostries/repostries_implmentation.dart';
import 'package:clean_archi_flutter/domain/entities/orgenic.dart';
import 'package:clean_archi_flutter/domain/usecases/get_orgenic_usecases.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';

final repostiryProvider = Provider<OrganicRepostrImpl>(
  (ref) => OrganicRepostrImpl(client: http.Client()),
);
final getUsecaseProvider =Provider<GetOrgenicUsecases>((ref){
  final repo =ref.watch(repostiryProvider);
  return GetOrgenicUsecases(repo);
});
class OrganicNotifier extends StateNotifier<AsyncValue<List<Orgenic>>> {
final GetOrgenicUsecases usecase;
OrganicNotifier({required this.usecase}):super(const AsyncLoading()){
fetchData();
  
}
Future<void>fetchData() async{
  state=const AsyncLoading();
  try{
final data=await usecase();
state =const AsyncData(data);

  }catch(e,st){
state=AsyncError(e, st);
  }
}
}
final organicNotifier= StateNotifierProvider<OrganicNotifier,AsyncValue<List<Orgenic>>>((ref) {
final useCase=ref.watch(getUsecaseProvider);
return organicNotifier(useCase);
});