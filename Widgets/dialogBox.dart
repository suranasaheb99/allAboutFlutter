import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'phoneBook',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts'
        ),
        centerTitle: true,
      ),
      body: MyList(),
    );
  }
}

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(4.0),
      itemBuilder: (context, i){
        return Card(
          child: ListTile(
            title: Text('ContactName'),
            // subtitle: ,
            leading: Icon(Icons.person),
            trailing: RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Icon(Icons.delete,color: Colors.black,),
              color: Colors.redAccent,
              onPressed: (){
                deleteDialog(context).then((value) {
                  print("$value");
                });
              },
            ),
          )
        );
      },
    );
  }
}

Future<bool> deleteDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: Text('Are you Sure'),
        actions: <Widget>[
          FlatButton(
            child: Text('Yes'),
            onPressed: (){Navigator.of(context).pop(true);},
          ),
          FlatButton(
            child: Text('No'),
            onPressed: (){Navigator.of(context).pop(false);},
          ),
        ],
      );
    }
  );
}

