import 'package:clean_archi_flutter/presentation/state/organic_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShowOrgenic extends StatelessWidget {
  const ShowOrgenic({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final org=ref.watch(OrganicProvider);
    return Scaffold(
  
    );
  }
}