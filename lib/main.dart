import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        title: FlutterLogo(
          colors: Colors.green,
          size: 25,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
//        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  alignment: Alignment(0.0, -0.65),
                  height: 100,
                  color: Colors.white,
                  child: Text('Get Couching',
                      style:
                          TextStyle(fontFamily: 'Montserrat', fontSize: 20.0))),
              Container(
                margin: EdgeInsets.fromLTRB(25, 60, 25, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(blurRadius: 2, color: Colors.grey),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 25, 5, 5),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'QuickSand',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 40, 5, 25),
                          child: Text(
                            '206',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'QuickSand',
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width - 327),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Buy more',
                          style: TextStyle(
                            fontFamily: 'QuickSand',
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, bottom: 15),
            child: GridView.count(
              primary: false,
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 7,
              shrinkWrap: true,
              children: <Widget>[
                buildCard('Tom', 'Available', 1),
                buildCard('Sam', 'Away', 2),
                buildCard('Mam', 'Away', 3),
                buildCard('Jam', 'Available', 4),
                buildCard('Ham', 'Available', 5),
                buildCard('Mom', 'Available', 6),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Column(
        children: <Widget>[
          SizedBox(height: 19),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://www.nme.com/wp-content/uploads/2019/05/avengersrdj-696x442.jpg'),
              ),
              Container(
                margin: EdgeInsets.only(left: 40, bottom: 40),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 3.3,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'QuickSand',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            status,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'QuickSand',
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 7),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 7,
              ),
              decoration: BoxDecoration(
                color: status == 'Away' ? Colors.grey : Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                'Request',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'QuickSand',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
