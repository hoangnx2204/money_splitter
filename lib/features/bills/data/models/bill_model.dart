import 'package:freezed_annotation/freezed_annotation.dart';
part 'bill_model.g.dart';
part 'bill_model.freezed.dart';

@freezed
class BillModel with _$BillModel {
  const BillModel._();
  const factory BillModel({
    required String name,
    required double price,
  }) = _BillModel;
  factory BillModel.fromJson(Map<String, dynamic> json) =>
      _$BillModelFromJson(json);
}
