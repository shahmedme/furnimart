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
                  height: MediaQuery.of(context).size.height / 2.9,
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
                                        image: AssetImage('images/shakil.jpg')),
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
                            'Hello, Shakil',
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
              height: 15.0,
            ),
            Material(
              elevation: 1.0,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 10.0, bottom: 6.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/sofas.png'))),
                          ),
                          Text(
                            'Sofas',
                            style: TextStyle(fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/wardrobe.png'))),
                          ),
                          Text(
                            'Wardrobe',
                            style: TextStyle(fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/desks.png'))),
                          ),
                          Text(
                            'Desk',
                            style: TextStyle(fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/dressers.png'))),
                          ),
                          Text(
                            'Dresser',
                            style: TextStyle(fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            itemCard('FinnNavian', 'images/ottoman.jpg', true),
            itemCard('FinnNavian', 'images/chair.jpg', false),
            itemCard('FinnNavian', 'images/anotherchair.jpg', true),
          ],
        ),
      ),
    );
  }

  Widget itemCard(String title, String imgPath, bool isFavourite) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: Material(
        elevation: 2.0,
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 140.0,
                height: 150.0,
                margin: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.contain)),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 20.0),
                          ),
                          Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: isFavourite
                                      ? Colors.white
                                      : Colors.grey.withOpacity(0.2)),
                              child: isFavourite
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 6.0),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                    )
                                  : Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Icon(Icons.favorite_border)),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                            'Scandinavian small sized double sofa imported full leather / Dale italia oil.'),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 15.0),
                        color: Color.fromARGB(255, 255, 221, 91),
                        child: Row(
                          children: <Widget>[
                            Container(
                              color: Color.fromARGB(255, 253, 192, 45),
                              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                              child: Text(
                                '\$248',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
