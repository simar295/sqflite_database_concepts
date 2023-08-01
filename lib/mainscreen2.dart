import 'package:flutter/material.dart';
import 'package:sqflite_database_concepts/dbhelper.dart';

class mainscreen2 extends StatefulWidget {
  const mainscreen2({super.key});

  @override
  State<mainscreen2> createState() => _mainscreen2State();
}

class _mainscreen2State extends State<mainscreen2> {
  final dbhelp = dbhelper.instance;

  void insertdata() async {
    Map<String, dynamic> rowhere = {
      dbhelper.columnname: "jattiye",
      dbhelper.columnage: 17,
    };
    final id = await dbhelp.insert(rowhere);
    print("id is");
    print(id);
  }

  void queryall() async {
    var allrows = await dbhelp.queryall();
    allrows.forEach(
      (element) {
        print(element);
      },
    );
  }

  void queryspecific() async {
    var allrows = await dbhelp.queryspecific(18);
    print(allrows);
  }

  void deletedata() async {
    var id = await dbhelp.deletedata(2);
    print(id);
  }

  void update() async {
    var rows = await dbhelp.update(1);
    print(rows);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data querying"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: insertdata,
            child: Text("insert"),
            style: ButtonStyle(),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: queryall,
            child: Text("query"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: queryspecific,
            child: Text("query specific"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: update,
            child: Text("update"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: deletedata,
            child: Text("delete"),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}

 ///////////////////////////////////////////////////////////////////////////
    /*  TextStyle allfonts = TextStyle(
    fontSize: 18,
    fontFamily: "verdana",
  ); */
  ///////////////////////////////////////////////////////////////////////////