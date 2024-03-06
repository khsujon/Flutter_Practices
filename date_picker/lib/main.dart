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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Date Times Picker"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select Date',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1999),
                        lastDate: DateTime(2030));
                    if (date != null) {
                      print(
                          "Selected Date: ${date.day}-${date.month}-${date.year}");
                    }
                  },
                  child: Text('Show')),
              Text(
                'Select Time',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.dial);
                    if (pickTime != null) {
                      print(
                          "Time Selected: ${pickTime.hour} : ${pickTime.minute}");
                    }
                  },
                  child: Text('Select Time'))
            ],
          ),
        ));
  }
}
