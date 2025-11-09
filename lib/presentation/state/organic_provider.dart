import 'package:clean_archi_flutter/domain/entities/orgenic.dart';
import 'package:clean_archi_flutter/domain/usecases/get_orgenic_usecases.dart';
import 'package:flutter/material.dart';

class OrganicProvider with ChangeNotifier {
  final GetOrgenicUsecases getOrgenicUsecases;
  OrganicProvider({required this.getOrgenicUsecases});
   List<Orgenic> _orgenic = [];
  List<Orgenic> get orgenic => _orgenic;
   bool _isloading = false;
  bool get isloading => _isloading;
   String _error = '';
  String get error => _error;
  Future<void> fetchOrgenic() async{
    _isloading=true;
    _error='';
    notifyListeners();
      try{
      _orgenic=await getOrgenicUsecases.execute();
      }catch(e){
_error=e.toString();
      }finally{
_isloading=false;
notifyListeners();
      }
    
  }
  void post(){}
}
