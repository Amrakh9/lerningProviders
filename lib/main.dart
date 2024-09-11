import 'package:flutter/material.dart';
import 'package:learning_provider/home_page.dart';
import 'package:learning_provider/second_page.dart';
import 'package:provider/provider.dart';
import 'package:learning_provider/list_provider.dart';

void main() {
  runApp(const Tezish());
}


class Tezish extends StatelessWidget {
  const Tezish({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NumberListProvider())
      ],
      child: MaterialApp(
        home: Homepage(),
        routes: {
          '/secondpage': (context) => const SecondPage(),
        },
      ),
    );
  }
}
