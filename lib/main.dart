import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Shapes for RaisedButton & FlatButton';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final text = Text('SUBMIT', style: TextStyle(fontSize: 16));
    final icon = Icon(Icons.email);

    final stadiumBorder = StadiumBorder(
      side: BorderSide(color: Colors.red),
    );

    final roundedShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(color: Colors.red),
    );

    final lessRoundedShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: Colors.red),
    );

    final circleShape = CircleBorder(
      side: BorderSide(color: Colors.red),
    );

    final squareShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
      side: BorderSide(color: Colors.red),
    );

    final beveledShape = BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(color: Colors.red),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButtonRow(shape: stadiumBorder, child: text),
            buildButtonRow(shape: roundedShape, child: text),
            buildButtonRow(shape: lessRoundedShape, child: text),
            buildButtonRow(shape: circleShape, child: icon),
            buildButtonRow(shape: squareShape, child: icon),
            buildButtonRow(shape: beveledShape, child: icon),
          ],
        ),
      ),
    );
  }

  Widget buildButtonRow(
          {@required Widget child, @required ShapeBorder shape}) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildRaisedButton(child: child, shape: shape),
            const SizedBox(width: 16),
            buildFlatButton(child: child, shape: shape),
          ],
        ),
      );

  Widget buildRaisedButton(
          {@required Widget child, @required ShapeBorder shape}) =>
      RaisedButton(
        child: child,
        onPressed: () {},
        shape: shape,
        color: Colors.red,
        textColor: Colors.white,
      );

  Widget buildFlatButton(
          {@required Widget child, @required ShapeBorder shape}) =>
      FlatButton(
        child: child,
        onPressed: () {},
        shape: shape,
        color: Colors.white,
        textColor: Colors.red,
      );
}
