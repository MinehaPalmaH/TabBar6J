import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
} //Mi aplicación

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.blueGrey), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.computer_rounded)),
              Tab(icon: Icon(Icons.coffee_maker)),
              Tab(icon: Icon(Icons.laptop)),
              Tab(icon: Icon(Icons.coffee_rounded)),
            ],
          ),
          title: Text('Tabs Palma'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.computer_rounded, size: 350),
            Icon(Icons.coffee_maker, size: 350),
            Icon(Icons.laptop, size: 350),
            Icon(Icons.coffee_rounded, size: 350),
          ],
        ),
      ),
    );
  }
} //State<MyHomePage>
