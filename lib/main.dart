import 'package:flutter/material.dart';
import 'custom_widgets/inc_button.dart';
import 'package:provider/provider.dart';
import 'package:app_de_prueba/providers/counter_provier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Prueba',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de Prueba'),
      ),
      body: Center(
          child: Consumer<Counter>(
        builder: (context, counter, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              onPressed: () => {context.read<Counter>().reset()},
              reset: true,
            ),
            Text(
              'You have pressed this button ${counter.count} times',
              style: counter.textBold == true //_textBold == true
                  ? const TextStyle(fontWeight: FontWeight.bold)
                  : const TextStyle(fontWeight: FontWeight.normal),
            ),
            CustomButton(
              onPressed: () => {context.read<Counter>().increment()},
              reset: false,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Switch(
                  value: counter.textBold,
                  onChanged: (value) {
                    context.read<Counter>().textBoldness(value);
                  },
                ),
                counter.textBold ? const Text('On') : const Text('Off'),
              ],
            ),
            counter.textBold
                ? const Text('Remove text boldness')
                : const Text('Change text to bold'),
          ],
        ),
      )),
    );
  }
}
