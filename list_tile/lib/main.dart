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
    var arrname = [
      'hgdh',
      'ygwb',
      'kndv',
      'wuddd',
      'cjdgf',
      'gdttrw',
      'hgdh',
      'ygwb',
      'kndv',
      'wuddd',
      'cjdgf',
      'gdttrw'
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("ListTile"),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/boy.png'),
                backgroundColor: Colors.grey,
                radius: 50,
              ),
              title: Text(arrname[index]),
              subtitle: Text('Ph No'),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: arrname.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 70,
              thickness: 2,
            );
          },
        ));
  }
}
