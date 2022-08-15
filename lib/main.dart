import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_flutter/homepage.dart';
import 'package:scoped_model_flutter/models/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // scoped model takes instance of a class as a model

    return ScopedModel(
      model: CounterClass(),
      // Now the state is at the top
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Scoped Model Demo'),
      ),
    );
  }
}
