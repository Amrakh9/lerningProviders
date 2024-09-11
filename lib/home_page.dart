import 'package:flutter/material.dart';
import 'package:learning_provider/list_provider.dart';
import 'package:learning_provider/second_page.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberListProvider, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numberListProvider.add();
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(),
          body: SizedBox(
            child: Column(
              children: [
                Text(
                  numberListProvider.numbers.last.toString(),
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SecondPage()),
                    );
                  },
                  child: const Text("Go to Second Page"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
