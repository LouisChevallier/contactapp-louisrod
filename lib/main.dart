import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My contact list",
      theme: ThemeData(primaryColor: Colors.teal[300]),
      home: MyHomePage(title: 'Flutter Contact'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              /*child: Text("louis"),*/
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                        title: Text("Angelina Brittain"),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/react.png")),
                        trailing: PopupMenuButton(
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                value: "edit",
                                child: Text("Edit"),
                              ),
                              PopupMenuItem(
                                value: "delete",
                                child: Text("Delete"),
                              ),
                            ];
                          },
                        )),
                    ListTile(
                        title: Text("Bertrand Lazad"),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/react.png")),
                        trailing: Icon(Icons.more_horiz)),
                    ListTile(
                        title: Text("Louis Chevallier"),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/react.png")),
                        trailing: Icon(Icons.more_horiz)),
                    ListTile(
                        title: Text("Paul Newman"),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/react.png")),
                        trailing: Icon(Icons.more_horiz)),
                    ListTile(
                        title: Text("Julien Marie"),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/react.png")),
                        trailing: Icon(Icons.more_horiz)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
