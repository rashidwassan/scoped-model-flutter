import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_flutter/components/incrementer.dart';
import 'package:scoped_model_flutter/models/counter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// although we could have make the counter variable global. But this would not be a better approach
// lift the state up by putting counter variable in MyHomePage, we will be exposing the value to all the descendants of the MyHomePage.
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ScopedModelDescendant<CounterClass>(
              builder: (context, child, model) => Text(
                '${model.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const Incrementer(),
    );
  }
}
