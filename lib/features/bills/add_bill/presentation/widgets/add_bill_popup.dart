import 'package:flutter/material.dart';

class AddBillPopup extends StatefulWidget {
  const AddBillPopup({super.key});

  @override
  State<AddBillPopup> createState() => _AddBillPopupState();
}

class _AddBillPopupState extends State<AddBillPopup> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Add bill',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(),
                    labelText: 'Price',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
