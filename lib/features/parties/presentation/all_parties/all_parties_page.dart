import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:money_splitter/features/parties/presentation/party_detail/party_detail.dart';

import '../../data/models/party_model.dart';
import 'all_parties_provider.dart';

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
                    timestamp: '0',
                  ),
                ],
              );
          return ListView.builder(
            itemCount: allParties.length,
            itemBuilder: (context, index) {
              final party = allParties[index];
              return ListTile(
                title: Text(party.name),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => PartyDetailPage(party),
                    ),
                  );
                },
                subtitle: Text(
                  DateFormat('dd/MM/yyy').format(
                    DateTime.fromMillisecondsSinceEpoch(
                      int.tryParse(party.timestamp) ?? 0,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
