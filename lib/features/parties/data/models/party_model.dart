import 'package:freezed_annotation/freezed_annotation.dart';
part 'party_model.g.dart';
part 'party_model.freezed.dart';

@freezed
class PartyModel with _$PartyModel {
  const PartyModel._();
  const factory PartyModel({
    final String? id,
    @Default('') final String name,
  }) = _PartyModel;
  factory PartyModel.fromJson(Map<String, dynamic> json) =>
      _$PartyModelFromJson(json);
}
