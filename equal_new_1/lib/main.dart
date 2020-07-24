import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_counter/flutter_counter.dart';

void main() {
  runApp(MyApp());
}

final valuecontroller = TextEditingController();
final valuecontroller1 = TextEditingController();
final valuecontroller2 = TextEditingController();
final valuecontroller3 = TextEditingController();

class User {
  String id1;
  String id2;
  String id3;
  String value;

  User(this.value);

  Map toJson() => {
        "User1": {'name': "id1", 'value': value},
        "User2": {'name': "id2", 'value': value},
        "User3": {'name': "id3", 'value': value}
      };
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num _counter1 = 0;
  num _counter2 = 0;
  num _counter3 = 0;

  num _defaultValue1 = 0;
  num _defaultValue2 = 0;
  num _defaultValue3 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffffffff),
            bottom: TabBar(
              labelColor: Colors.orangeAccent,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: "Equally",
                ),
                Tab(
                  text: "Dollar",
                ),
                Tab(
                  text: "Multiples",
                ),
              ],
            ),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bill Split',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: null,
                          ),
                          controller: valuecontroller,
                          onEditingComplete: () {
                            setState(() {
                              var a = int.parse(valuecontroller.text);
                              var b = a / 6;
                              print("value of each $b");
                            });
                          },
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount Paid by',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Padding(padding: EdgeInsetsDirectional.only(start: 200)),
                    Icon(Icons.account_box, color: Colors.amber),
                    Icon(Icons.account_box, color: Colors.amber),
                    Icon(Icons.account_box, color: Colors.amber),
                    Icon(Icons.account_box, color: Colors.amber),
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text(
                      'The Bukkad Gang',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    backgroundColor: Color(0xffffffff),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((string, context) {
                      return Column(
                        children: [
                          Card(
                            child: Row(
                              children: [
                                Icon(Icons.account_circle),
                                Padding(
                                    padding:
                                        EdgeInsetsDirectional.only(start: 20)),
                                Text("Yugam Shukla"),
                                Padding(
                                    padding:
                                        EdgeInsetsDirectional.only(start: 250)),
                                RaisedButton(
                                  onPressed: null,
                                  child: Text("100"),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            child: Row(
                              children: [
                                Icon(Icons.account_circle),
                                Padding(
                                    padding:
                                        EdgeInsetsDirectional.only(start: 20)),
                                Text("Yugam Shukla"),
                                Padding(
                                    padding:
                                        EdgeInsetsDirectional.only(start: 250)),
                                RaisedButton(
                                  onPressed: null,
                                  child: Text("100"),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            child: Row(
                              children: [
                                Icon(Icons.account_circle),
                                Padding(
                                    padding:
                                        EdgeInsetsDirectional.only(start: 20)),
                                Text("Yugam Shukla"),
                                Padding(
                                    padding:
                                        EdgeInsetsDirectional.only(start: 250)),
                                RaisedButton(
                                  onPressed: null,
                                  child: Text("100"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }, childCount: 1),
                  ),
                  SliverFillRemaining(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          onPressed: null,
                          child: Text("Add/Remove Member"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text(
                      'The Bukkad Gang',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    backgroundColor: Color(0xffffffff),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (string, context) {
                        return Column(
                          children: [
                            Card(
                              child: Row(
                                children: [
                                  Icon(Icons.account_circle),
                                  Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          start: 20)),
                                  Text("id1"),
                                  Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          start: 270)),
                                  Container(
                                    height: 50,
                                    width: 80,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      controller: valuecontroller1,
                                      autofocus: false,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Card(
                              child: Row(
                                children: [
                                  Icon(Icons.account_circle),
                                  Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          start: 20)),
                                  Text("id2"),
                                  Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          start: 270)),
                                  Container(
                                    height: 50,
                                    width: 80,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      controller: valuecontroller2,
                                      autofocus: false,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Card(
                              child: Row(
                                children: [
                                  Icon(Icons.account_circle),
                                  Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          start: 20)),
                                  Text("id3"),
                                  Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          start: 270)),
                                  Container(
                                    height: 50,
                                    width: 80,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      controller: valuecontroller3,
                                      onEditingComplete: () {},
                                      autofocus: false,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      childCount: 1,
                    ),
                  ),
                  SliverFillRemaining(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: () {
                          var value = int.parse(valuecontroller.text);
                          var value1 = int.parse(valuecontroller1.text);
                          var value2 = int.parse(valuecontroller2.text);
                          var value3 = int.parse(valuecontroller3.text);
                          var total = value1 + value2 + value3;
                          User user1 = User(
                            valuecontroller1.text,
                          );

                          String jsonUser1 = jsonEncode(user1);

                          if (total == value) {
                            print("matched");
                            print(jsonUser1);
                          } else {
                            print(" not matched");
                          }
                        },
                        child: Text("print"),
                      ),
                    ],
                  )),
                ],
              ),
              CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text(
                      'The Bukkad Gang',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    backgroundColor: Color(0xffffffff),
                  ),
                  SliverList(
                      delegate: SliverChildBuilderDelegate((string, context) {
                    return Column(
                      children: [
                        Card(
                          child: Row(
                            children: [
                              Icon(Icons.account_circle),
                              Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 20)),
                              Text("id1"),
                              Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 270)),
                              Container(
                                height: 50,
                                width: 80,
                                child: Counter(
                                  initialValue: _defaultValue1,
                                  minValue: 0,
                                  maxValue: 10,
                                  step: 1,
                                  decimalPlaces: 0,
                                  onChanged: (value1) {
                                    setState(() {
                                      _defaultValue1 = value1;
                                      _counter1 = value1;
                                      var change1 =
                                          int.parse(valuecontroller.text)/value1;
                                      print(change1);
                                      return Text("yugam");
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Row(
                            children: [
                              Icon(Icons.account_circle),
                              Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 20)),
                              Text("id2"),
                              Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 270)),
                              Container(
                                height: 50,
                                width: 80,
                                child: Counter(
                                  initialValue: _defaultValue2,
                                  minValue: 0,
                                  maxValue: 10,
                                  step: 1,
                                  decimalPlaces: 0,
                                  onChanged: (value2) {
                                    setState(() {
                                      _defaultValue2 = value2;
                                      _counter2 = value2;
                                      var change2 =
                                          int.parse(valuecontroller.text) /
                                              value2;
                                      print(change2);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Row(
                            children: [
                              Icon(Icons.account_circle),
                              Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 20)),
                              Text("id3"),
                              Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 270)),
                              Container(
                                height: 50,
                                width: 80,
                                child: Counter(
                                  initialValue: _defaultValue3,
                                  minValue: 0,
                                  maxValue: 10,
                                  step: 1,
                                  decimalPlaces: 0,
                                  onChanged: (value3) {
                                    setState(() {
                                      _defaultValue3 = value3;
                                      _counter3 = value3;
                                      var change3 =
                                          int.parse(valuecontroller.text) /
                                              value3;
                                      print(change3);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }, childCount: 1)),
                  SliverFillRemaining(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: null,
                        child: Text("Add/Remove Member"),
                      ),
                    ],
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
