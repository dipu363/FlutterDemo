
import 'package:flutter/material.dart';
import 'package:rastapitest/data/ApplicationApi.dart';
import 'package:rastapitest/data/CodeModel.dart';
import 'package:rastapitest/response/CommonResponse.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  List nationalitylist = [];
  List countrynamelist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getAllNationality();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: nationalitylist.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: ListTile(
                    onTap: () {},
                    title: Text(nationalitylist[index].nameGlobal)),
              );
            })
              // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  void _getAllNationality() async {
    CommonResponse res = await ApplicationApi(context).getNationality();
    setState(() {
      if (res.data!.length > 0) {
        nationalitylist = res.data!;
        for (CodeModel c in nationalitylist) {
          print(c.nameGlobal);
          countrynamelist.add(c.nameGlobal);
        }
      }
    });
  }
}
