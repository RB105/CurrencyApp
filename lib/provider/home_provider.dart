import 'package:currency/data/model/currency_model.dart';
import 'package:currency/data/repository/currency_repo.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider() {
    getCurrency();
  }

  CurrencyRepository repository = CurrencyRepository();

  bool isLoading = false;
  String error = "";
  late List<CurrencyModel> data;

  Future<void> getCurrency() async {
    isLoading = true;
    notifyListeners();
    await repository.checkDatabase().then((dynamic response) {
      if (response is List<CurrencyModel>) {
        data = response;
        isLoading = false;
        notifyListeners();
      } else {
        error = response.toString();
        isLoading = false;
        notifyListeners();
      }
    });
  }
}