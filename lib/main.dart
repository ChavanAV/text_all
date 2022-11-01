import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String s="";
  void onChange(String value){
    setState(() {
      s="Change:${value}";
    });
  }

  void onSubmit(String value){
    setState(() {
      s="Submit:${value}";
    });
  }


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
            Text(s),
            TextField(
              decoration: InputDecoration(
                labelText: "hello",
                hintText: "Hint",
                icon: Icon(Icons.people),
              ),
              onChanged: onChange,
              onSubmitted: onSubmit,
            )
          ],
        ),
      ),
    );
  }
}
