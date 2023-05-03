import 'package:currency/data/model/currency_model.dart';
import 'package:currency/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) {
        return Scaffold(
          body: RefreshIndicator(
            onRefresh: context.read<HomeProvider>().getCurrency,
            child: Builder(
              builder: (context) {
                if (context.watch<HomeProvider>().isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (context.watch<HomeProvider>().error.isNotEmpty) {
                  return Center(
                    child: Text(context.watch<HomeProvider>().error),
                  );
                } else {
                  List<CurrencyModel> data = context.watch<HomeProvider>().data;
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
      },
    );
  }
}
