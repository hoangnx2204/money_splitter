import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_splitter/features/parties/data/data_source/all_parties_data_source.dart';
import 'package:money_splitter/features/parties/data/models/party_model.dart';

final allPartiesProvider = FutureProvider<List<PartyModel>>((ref) async {
  return ref.watch(allPartiesDataSourceProvider).getAllParties();
});
