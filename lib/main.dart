// https://flutter.io/docs/development/ui/layout/tutorial

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
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
          title: Text('Flatter layout samplwe'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('images/lake.jpg',width: 600.0,height: 240.0,fit:BoxFit.cover),
            titleSection(),
            buttonSection(context),
            textSection(),
          ],
        ));
  }

  Widget titleSection() {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(22.0),
          child: Row(
            children: [
              // steretch column to use all remaining free space in the row.
              Expanded(
                // 1
                child: Column(
                  //postions the columns at the start of the row.
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 2
                    Container(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Yedigöller kamp alanı',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Text(
                      'Bolu Turkey',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              //3 
              Icon(Icons.star, color: Colors.red[500]),
              Text('44')
            ],
          ),
        ),
      ],
    );
  }

  Widget buttonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(color, Icons.call, "ara"),
        _buildButtonColumn(color, Icons.near_me, "rota"),
        _buildButtonColumn(color, Icons.share, "paylaş"),
      ],
    ));
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon, color: color),
      Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
          )),
    ],
  );
}

Widget  textSection() {
return Container(
  padding: const EdgeInsets.all(32.0),
  child: Text(
     'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
  ),
  
  );

}




