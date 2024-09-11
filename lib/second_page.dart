import 'package:flutter/material.dart';
import 'package:learning_provider/list_provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberListProvider, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numberListProvider.add(); // Call add() on the instance
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(),
          body: SizedBox(
            child: Column(
              children: [
                Text(
                  numberListProvider.numbers.toString(),
                  style: const TextStyle(
                    fontSize: 26,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: numberListProvider.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numberListProvider.numbers[index].toString(),
                        style: const TextStyle(
                          fontSize: 26,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
