import 'package:isar/isar.dart';

part "currency_model.g.dart";

@collection
class CurrencyModel {
  Id id = Isar.autoIncrement;
  String? title;
  String? code;
  String? cbPrice;
  String? nbuBuyPrice;
  String? nbuCellPrice;
  String? date;

  CurrencyModel(
      {this.title,
      this.code,
      this.cbPrice,
      this.nbuBuyPrice,
      this.nbuCellPrice,
      this.date});

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    code = json['code'];
    cbPrice = json['cb_price'];
    nbuBuyPrice = json['nbu_buy_price'];
    nbuCellPrice = json['nbu_cell_price'];
    date = json['date'];
  }
}
