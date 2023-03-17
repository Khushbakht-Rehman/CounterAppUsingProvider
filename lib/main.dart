import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/CounterProvider.dart';

void main() {
  runApp(
MultiProvider(providers: [
  ChangeNotifierProvider<CounterProvider>(create: (_)=>CounterProvider())
  
],
child: MyApp(),
)


      );
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
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String title;
   MyHomePage({super.key, required this.title});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var prov=Provider.of<CounterProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(

        title: Text("Counter App"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your count is ${prov.count}")

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            prov.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
