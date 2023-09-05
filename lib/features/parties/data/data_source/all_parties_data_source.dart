import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_splitter/features/parties/data/models/party_model.dart';

class AllPartiesDataSource {
  final partiesCollection =
      FirebaseFirestore.instance.collection('parties').withConverter(
            fromFirestore: (snapshot, _) {
              final data = snapshot.data() ?? {};
              return PartyModel(
                id: snapshot.id,
                name: data['name'],
                timestamp: (data['timestamp'] as Timestamp)
                    .toDate()
                    .millisecondsSinceEpoch
                    .toString(),
              );
            },
            toFirestore: (value, _) => value.toJson(),
          );
  Future<List<PartyModel>> getAllParties() async {
    try {
      final partiesQuery = await partiesCollection.get();
      print('AppLog: ${partiesQuery.docs.first.data()}');
      return partiesQuery.docs.map((e) {
        return e.data();
      }).toList();
    } catch (e) {
      print('AppLog: ${e.toString()}');
      throw Exception();
    }
  }
}

final allPartiesDataSourceProvider =
    Provider<AllPartiesDataSource>((ref) => AllPartiesDataSource());
