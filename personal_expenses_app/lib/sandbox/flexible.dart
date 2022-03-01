import 'package:flutter/material.dart';

class FlexibleSandbox extends StatelessWidget {
  const FlexibleSandbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flexible sandbox'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            child: const Text('Item 1'),
            color: Colors.red,
          ),
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              child: const Text('Item 2'),
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              child: const Text('Item 3'),
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
