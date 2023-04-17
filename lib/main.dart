import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points_counter());
}

class basketball_points_counter extends StatefulWidget {
  @override
  _basketball_points_counterState createState() => _basketball_points_counterState();
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  int TeamAResult=0;

  int TeamBResult=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Basketball Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'TEAM A',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '$TeamAResult',
                        style: TextStyle(
                          fontSize: 90,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamAResult++;
                          });
                        },
                        child: Text('Add 1 point', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey[100],
                          onPrimary: Colors.black,
                          minimumSize: Size(150, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamAResult +=2 ;
                          });
                        },
                        child: Text('Add 2 points', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey[100],
                          onPrimary: Colors.black,
                          minimumSize: Size(150, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamAResult +=3 ;
                          });
                        },
                        child: Text('Add 3 points', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey[100],
                          onPrimary: Colors.black,
                          minimumSize: Size(150, 40),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 2.0,
                    indent: 20.0,
                    color: Colors.blueGrey,
                  ),
                ),

                Container(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'TEAM B',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '$TeamBResult',
                        style: TextStyle(
                          fontSize: 90,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBResult++ ;
                          });
                        },
                        child: Text('Add 1 point', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey[100],
                          onPrimary: Colors.black,
                          minimumSize: Size(150, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBResult +=2 ;
                          });
                        },
                        child: Text('Add 2 points', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey[100],
                          onPrimary: Colors.black,
                          minimumSize: Size(150, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBResult +=3 ;
                          });
                        },
                        child: Text('Add 3 points', style:TextStyle(fontSize: 20.0),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueGrey[100],
                          onPrimary: Colors.black,
                          minimumSize: Size(150, 40),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            ElevatedButton(
                      onPressed: () {
                        setState(() {
                            TeamAResult = 0;
                            TeamBResult = 0;
                          });
                      },
                      child: Text('Reset', style:TextStyle(fontSize: 20.0),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[100],
                        onPrimary: Colors.black,
                        minimumSize: Size(150, 40),
                      ),
                    ),
          ],
        ),

      ),
    );
  }
}
