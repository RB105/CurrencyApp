import 'package:currency/data/model/currency_model.dart';
import 'package:currency/data/repository/currency_repo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Currency"),),
          body: RefreshIndicator(
            onRefresh: CurrencyRepository().checkDatabase,
            child: FutureBuilder(
              future: CurrencyRepository().checkDatabase(),
              builder: (context, snapshot)  {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  List<CurrencyModel> data = snapshot.data as List<CurrencyModel>;
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(data[index].title.toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        );
  }
}
