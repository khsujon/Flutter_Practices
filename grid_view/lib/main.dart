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
    var arrColor = [
      Colors.red,
      Colors.grey,
      Colors.greenAccent,
      Colors.yellow,
      Colors.blue,
      Colors.black,
      Colors.pink,
      Colors.orange
    ];
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('GridView'),
        ),
        body: GridView.builder(
          itemBuilder: (context, index) {
            return Container(color: arrColor[index]);
          },
          itemCount: arrColor.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        )
        /*Column(
          children: [
            Container(
              height: 200,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Container(color: arrColor[0]),
                  Container(color: arrColor[1]),
                  Container(color: arrColor[2]),
                  Container(color: arrColor[3]),
                  Container(color: arrColor[4]),
                  Container(color: arrColor[5]),
                  Container(color: arrColor[6]),
                  Container(color: arrColor[7]),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              height: 200,
              child: GridView.extent(
                maxCrossAxisExtent: 50,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Container(color: arrColor[0]),
                  Container(color: arrColor[1]),
                  Container(color: arrColor[2]),
                  Container(color: arrColor[3]),
                  Container(color: arrColor[4]),
                  Container(color: arrColor[5]),
                  Container(color: arrColor[6]),
                  Container(color: arrColor[7]),
                ],
              ),
            )
          ],
        )*/
        );
  }
}
