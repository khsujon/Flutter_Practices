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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('ScrollView'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(right: 10, bottom: 10),
                        color: Colors.yellowAccent,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(right: 10, bottom: 10),
                        color: Colors.orange,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(right: 10, bottom: 10),
                        color: Colors.blue,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(right: 10, bottom: 10),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.blueGrey,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.purple,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.lightGreenAccent,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.yellowAccent,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.blueGrey,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.purple,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.lightGreenAccent,
                ),
              ],
            ),
          ),
        ));
  }
}
