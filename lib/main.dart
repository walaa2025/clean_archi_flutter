import 'package:clean_archi_flutter/data/repostries/repostries_implmentation.dart';
import 'package:clean_archi_flutter/domain/usecases/get_orgenic_usecases.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'presentation/state/organic_provider.dart';


void main() {
  final organicRepository = OrganicRepostrImpl(client: http.Client());
  final getOrgenicUsecases = GetOrgenicUsecases(organicRepository);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => OrganicProvider(getOrgenicUsecases: getOrgenicUsecases)
            ..fetchOrgenic()..post(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'App', home: OrganicListPage());
  }
}
