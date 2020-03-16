import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: double.infinity,
                  color: Color.fromARGB(255, 254, 215, 78),
                ),
                Positioned(
                  bottom: 50.0,
                  right: 100.0,
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color.fromARGB(100, 254, 255, 109),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100.0,
                  left: 150.0,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Color.fromARGB(100, 254, 255, 109)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(30.0),
                                    image: DecorationImage(
                                        image:
                                        AssetImage('images/chris.jpg')),
                                  )),
                              Container(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                  iconSize: 40.0,
                                ),
                              )
                            ]),
                        Container(
                          margin: EdgeInsets.only(top: 17.0),
                          child: Text(
                            'Hello, Pino',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                        ),
                        Container(
                          child: Text(
                            'What do you want to buy?',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 25.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 34.0),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(10.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Color.fromARGB(255, 254, 215, 78),
                                    size: 30.0,
                                  ),
                                  contentPadding: EdgeInsets.all(20.0),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Poppins')),
                            ),
                          ),
                        )
                      ]),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Stack(
              children: <Widget>[
                Material(
                  elevation: 1.0,
                  child: Container(
                    height: 75.0,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width/4,
                      child: Column(
                        children: <Widget>[
                          Image(image: AssetImage('images/sofa.png'),),
                          Text('Sofas')
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
