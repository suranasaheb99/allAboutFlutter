//A scrollable list of widgets arranged linearly.
//ListView is the most commonly used scrolling widget.
//It displays its children one after another in the scroll direction.
//In the cross axis, the children are required to fill the ListView.

//*****************************************************************************EXAMPLE1************************************************************
//This example uses the default constructor for ListView which takes an explicit List<Widget> of children.
//This ListView's children are made up of Containers with Text.
ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
  ],
)

********************************************************************EXAMPLE2***************************************************************
//you can even use it in another format using builder
//This example mirrors the previous one, creating the same list using the ListView.builder constructor.
//Using the IndexedWidgetBuilder, children are built lazily and can be infinite in number.
final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

ListView.builder(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Entry ${entries[index]}')),
    );
  }
);
