 import 'dart:math';

import 'package:clean_archi_flutter/presentation/state/organic_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrganicListPage extends StatelessWidget {
  const OrganicListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orgenic List')),
      body: Consumer<OrganicProvider>(
        builder: (context, organicProvider, child) {
          if (organicProvider.isloading) {
            return Center(child: CircularProgressIndicator());
          } else if (organicProvider.error.isNotEmpty) {
            return Center(
              child: Text('Error to get organics: ${organicProvider.error}'),
            );
          } else if (organicProvider.orgenic.isEmpty) {
            return Center(child: Text('No organics found.'));
          } else {
            return ListView.builder(
              itemCount: organicProvider.orgenic.length,
              itemBuilder: (context, index) {
                final orgenic = organicProvider.orgenic[index];
                return Column(
                  children: [
                    if (index == 0)
                      Image.network(
                        'https://www.pexels.com/search/high%20resolution/',
                      ),
                    ListTile(
                      title: Text("orgenic.title"),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${orgenic.snippts}"),
                          Text("${orgenic.data.toString()}"),
                          Text("${orgenic.position.toString()}"),
                          TextButton(
                            child: Text("${orgenic.link}"),
                            onPressed: () {
                              log('Tapped on: ${orgenic.link}' as num);//research about the error
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    orgenic.title! + '\n' + orgenic.link!,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<OrganicProvider>(context, listen: false).fetchOrgenic();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
