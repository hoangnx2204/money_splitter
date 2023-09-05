import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_splitter/features/bills/data/models/bill_model.dart';

class PartyDetailDataSource {
  final String partyId;
  PartyDetailDataSource(this.partyId);

  late final partyDetailRef = FirebaseFirestore.instance
      .collection('parties')
      .doc(partyId)
      .collection('bills')
      .withConverter(
        fromFirestore: (snapshot, _) =>
            BillModel.fromJson(snapshot.data() ?? {}),
        toFirestore: (value, _) => value.toJson(),
      );

  Future<List<BillModel>> getPartyBills() async {
    final partyDetailQuery = await partyDetailRef.get();
    final bills = partyDetailQuery.docs.map((e) => e.data()).toList();
    return bills;
  }
}

final partyDetailDataSourceProvider =
    Provider.family<PartyDetailDataSource, String>(
  (ref, partyId) => PartyDetailDataSource(partyId),
);
