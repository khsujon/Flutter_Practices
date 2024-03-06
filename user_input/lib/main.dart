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
  var mailText = TextEditingController();
  var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('User Input By TextField'),
        ),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: mailText,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2)),
                          border: OutlineInputBorder(),
                          hintText: 'Enter Email',
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.redAccent,
                          )),
                    ),
                    Container(
                      height: 11,
                    ),
                    TextField(
                      controller: pass,
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21))),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        String uMail = mailText.text.toString();
                        String uPass = pass.text;
                        print("Email: $uMail,  Password: $uPass");
                      },
                      child: Text('Login'),
                    )
                  ],
                ))));
  }
}
