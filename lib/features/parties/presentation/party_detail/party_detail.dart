import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_splitter/features/bills/add_bill/presentation/widgets/add_bill_popup.dart';
import 'package:money_splitter/features/bills/data/models/bill_model.dart';
import 'package:money_splitter/features/parties/data/models/party_model.dart';
import 'package:money_splitter/features/parties/presentation/party_detail/party_detail_provider.dart';
import 'package:money_splitter/shared/mixins/price_mixin.dart';

class PartyDetailPage extends StatefulWidget {
  final PartyModel party;
  const PartyDetailPage(
    this.party, {
    super.key,
  });

  @override
  State<PartyDetailPage> createState() => _PartyDetailPageState();
}

class _PartyDetailPageState extends State<PartyDetailPage> with PriceMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.party.name)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              content: AddBillPopup(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          List<BillModel> bills = [];
          final data = ref.watch(partyDetailProvider(widget.party.id));
          data.whenOrNull(
            data: (data) => bills = data,
          );
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: bills.length,
                  itemBuilder: (context, index) {
                    final bill = bills[index];
                    return ListTile(
                      title: Text(bill.name),
                      subtitle: Text(formatPrice(bill.price)),
                    );
                  },
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    const Text('Total: '),
                    const SizedBox(width: 10),
                    Text(
                      formatPrice(
                        bills.fold(
                          0.0,
                          (previousValue, bill) => previousValue + bill.price,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
