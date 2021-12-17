import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '****Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
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

  String url = "http://172.20.250.34/cms/it.json.php";

  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    //print(res.body);
    data = jsonDecode(res.body);
    // print(data['superheros']);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Center(child: Text('BNU CMS')),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                          title: Text(data['superheros'][index]['name']),
                          subtitle: Text(
                              'Gender : ${data['superheros'][index]['power']}'),
                          leading: Image.network(
                              data['superheros'][index]
                                  ["url"], // this image doesn't exist
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.amber,
                              alignment: Alignment.center,
                              child: const Text(
                                'NO IMAGE!',
                                style: TextStyle(fontSize: 10),
                              ),
                            );
                          })),
                    );
                  },
                  itemCount: data['superheros'].length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return new MaterialApp(
  //       home: Center(
  //            child: SingleChildScrollView(child:  child: ListView.builder(
  //     itemBuilder: (context, index) {
  //       return ListTile(
  //         title: Text('pakistan'),
  //       );
  //     },
  //     itemCount: data.length,
  //   ),)

  //   ));
  // }
}
