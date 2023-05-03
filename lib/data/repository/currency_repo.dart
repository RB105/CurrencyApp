import 'dart:io';

import 'package:currency/data/model/currency_model.dart';
import 'package:currency/data/service/currency_service.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class CurrencyRepository {
  //for  instance
  CurrencyService service = CurrencyService();

  // for local db
  late Isar db;

  // returns data according database empty or not
   Future<dynamic> checkDatabase() async {
    db = await openDatabase();
    if (await db.currencyModels.count() == 0) {
      return getCurrency();
    } else {
      return await db.currencyModels.where().findAll();
    }
  }

  Future<dynamic> getCurrency() async {
    // hire order function
    return await service.getCurrency().then((dynamic response) async {
      if (response is List<CurrencyModel>) {
        await openDatabase();
        await writeToDatabase(response);
        return await db.currencyModels.where().findAll();
      } else {
        return response.toString();
      }
    });
  }

  Future<Isar> openDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([CurrencyModelSchema], directory: appDocDir.path);
    }
    return await Future.value(Isar.getInstance());
  }

  Future<void> writeToDatabase(List<CurrencyModel> data) async {
    final isar = db;
    isar.writeTxn(() async {
      await isar.clear();
      await isar.currencyModels.putAll(data);
    });
  }
}
