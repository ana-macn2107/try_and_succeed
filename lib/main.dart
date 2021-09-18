import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.blueAccent,
        textTheme: ThemeData.dark().textTheme.copyWith(
              headline3: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.dark().textTheme.copyWith(
                  headline6: TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.italic,
              )),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void popUpDialogScreen() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('It works!'),
              content: Text('Now I output two options'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {},
                  child:
                      Text('Close', style: Theme.of(context).textTheme.caption),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Move Forward',
                      style: Theme.of(context).textTheme.headline1,
                    ))
              ],
            ));
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('My First App'), actions: <Widget>[
        IconButton(
          onPressed: () {
            popUpDialogScreen();
          },
          icon: const Icon(Icons.alarm_add),
        )
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
