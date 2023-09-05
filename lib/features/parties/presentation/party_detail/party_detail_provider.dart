import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_splitter/features/bills/data/models/bill_model.dart';
import 'package:money_splitter/features/parties/data/data_source/party_detail_data_source.dart';

final partyDetailProvider = FutureProvider.family<List<BillModel>, String>(
  (ref, partyId) {
    return ref.watch(partyDetailDataSourceProvider(partyId)).getPartyBills();
  },
);
