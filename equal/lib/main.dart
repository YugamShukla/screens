import 'package:flutter/material.dart';
import 'package:flutter_counter/flutter_counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num _counter = 0;

  num _defaultValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
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
                    Text("Bill Split"),
                    Text("RS 600"),
                  ],
                ),
                Padding(padding:EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Amount Paid By"),
                    Padding(padding: EdgeInsetsDirectional.only(start: 200)),
                    Icon(Icons.account_box),
                    Icon(Icons.account_box),
                    Icon(Icons.account_box),
                    Icon(Icons.account_box),
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
                    title: Text('The Bukkad Gang'),
                  ),
                  SliverList(
                      delegate: SliverChildBuilderDelegate((string, context) {
                    Text("hello");
                    return Card(
                      child: Row(
                        children: [
                          Icon(Icons.account_circle),
                          Padding(
                              padding: EdgeInsetsDirectional.only(start: 20)),
                          Text("Yugam Shukla"),
                          Padding(
                              padding: EdgeInsetsDirectional.only(start: 250)),
                          RaisedButton(
                            onPressed: null,
                            child: Text("Rs 100"),
                          ),
                        ],
                      ),
                    );
                  }, childCount: 6)),
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
              CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text('The Bukkad Gang'),
                  ),
                  SliverList(
                      delegate: SliverChildBuilderDelegate((string, context) {
                    Text("hello");
                    return Card(
                      child: Row(
                        children: [
                          Icon(Icons.account_circle),
                          Padding(
                              padding: EdgeInsetsDirectional.only(start: 20)),
                          Text("Yugam Shukla"),
                          Padding(
                              padding: EdgeInsetsDirectional.only(start: 270)),
                          Container(
                              height: 50,
                              width: 80,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                autofocus: false,
                              ))
                        ],
                      ),
                    );
                  }, childCount: 5)),
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
              CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text('The Bukkad Gang'),
                  ),
                  SliverList(
                      delegate: SliverChildBuilderDelegate((string, context) {
                    Text("hello");
                    return Card(
                      child: Row(
                        children: [
                          Icon(Icons.account_circle),
                          Padding(
                              padding: EdgeInsetsDirectional.only(start: 20)),
                          Text("Yugam Shukla"),
                          Padding(
                              padding: EdgeInsetsDirectional.only(start: 270)),
                          Container(
                            height: 50,
                            width: 80,
                            child: Counter(
                              initialValue: _defaultValue,
                              minValue: 0,
                              maxValue: 10,
                              step: 1,
                              decimalPlaces: 0,
                              onChanged: (value) {
                                setState(() {
                                  _defaultValue = value;
                                  _counter = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  }, childCount: 5)),
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
