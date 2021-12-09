import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget user = Container(
      padding: const EdgeInsets.all(32),
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),


      child: Row(
        children: [
          Image.asset(
              'images/keith.png',
              width: 170,
              height: 219
          ),
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Center(child: Text(
                    'Keith Wolcott',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        "I'm Keith Wolcott. I graduated with a master's degree in Computer Science at the University of Texas at Tyler, and I'm seeking an entry-level position.",
        softWrap: true,
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget callline = Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
      Text(
        '903-424-1868',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.grey[700],
        ),
      )
        ],
      ),
    );

    Widget educationheader = Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        "Education",
        softWrap: true,
        style: TextStyle(
        fontSize: 20.0,
        color: Colors.grey[1000],
      ),
      ),
    );

    Widget uttylerline = Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Image.asset(
              'images/uttyler.jpg',
              width: 170,
              height: 219
          ),
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Center(child: Text(
                    'University of Texas at Tyler',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Center(child: Text(
                    '2017 - 2021',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget kilgoreline = Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Image.asset(
              'images/kilgore.jpg',
              width: 170,
              height: 219
          ),
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Center(child: Text(
                    'Kilgore College',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Center(child: Text(
                    '2015 - 2016',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.0
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget highschoolline = Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Image.asset(
              'images/gladewaterhighschool.jpg',
              width: 170,
              height: 219
          ),
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Center(child: Text(
                    'Gladewater High School',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Center(child: Text(
                    '2011 - 2015',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.0
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'About Me',
      home: Scaffold(
        appBar: AppBar(
          title: Text('About MeAbout Me'),
        ),
        body: ListView(
          children: [
            user,
            callline,
            textSection,
            educationheader,
            uttylerline,
            kilgoreline,
            highschoolline
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}