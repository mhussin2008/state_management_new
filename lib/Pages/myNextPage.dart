import 'package:flutter/material.dart';
import 'package:state_management_new/Tools/optionsList.dart';
import '../Data/data.dart';

class MyNextPage extends StatefulWidget {
  const MyNextPage({Key? key}) : super(key: key);

  @override
  State<MyNextPage> createState() => _MyNextPageState();
}

class _MyNextPageState extends State<MyNextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            OptionsList(options: Data.optionsPage2, page: 1),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Return Back'),
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
        ),
      ),
    );
  }
}
