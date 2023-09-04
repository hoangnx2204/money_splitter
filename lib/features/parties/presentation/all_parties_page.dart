import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_splitter/features/parties/data/models/party_model.dart';
import 'package:money_splitter/features/parties/presentation/all_parties_provider.dart';

class AllPartiesPage extends StatefulWidget {
  const AllPartiesPage({super.key});

  @override
  State<AllPartiesPage> createState() => _AllPartiesPageState();
}

class _AllPartiesPageState extends State<AllPartiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Parties'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final allParties = ref.watch(allPartiesProvider).maybeWhen(
                data: (data) => data,
                orElse: () => [
                  const PartyModel(
                    id: '02933',
                    name: 'error',
                  ),
                ],
              );
          return ListView.builder(
            itemCount: allParties.length,
            itemBuilder: (context, index) {
              final party = allParties[index];
              return ListTile(
                title: Text(party.name),
              );
            },
          );
        },
      ),
    );
  }
}
