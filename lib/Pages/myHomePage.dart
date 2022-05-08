import 'package:flutter/material.dart';
import 'package:state_management_new/Pages/myNextPage.dart';
import '../Tools/optionsList.dart';
import '../Data/data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.cyan,
      child: Center(
          child: Column(
        children: [
          OptionsList(options: Data.optionsPage1, page: 0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyNextPage()),
              );
            },
            child: const Text('Go To Next Page'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Data.printall();
              },
              child: const Text('Print choices'))
        ],
      )),
    ));
  }
}
