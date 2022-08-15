//  this file is for the button widget responsible for incrementing the counter
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_flutter/models/counter.dart';

// for proper separation of concerns, keeping this widget in its separate file.
class Incrementer extends StatelessWidget {
  const Incrementer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterClass>(
      builder: (context, child, model) => FloatingActionButton(
        onPressed: () {
          model.performIncrement();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
