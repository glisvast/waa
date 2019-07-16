import 'package:flutter/material.dart';
import 'package:waa/seat.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Ticketing0 extends StatefulWidget {
  @override
  _Ticketing0State createState() => _Ticketing0State();
}

class _Ticketing0State extends State<Ticketing0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '230 ',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Image.asset(
                        'lib/assets/point.png',
                        width: 15,
                        height: 15,
                      ),
                    ),
                    Text(
                      '   이승현',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' 님',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 10),
                            child: Text(
                              '예매하기',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Image.asset(
                              "lib/assets/dot.png",
                              width: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 171,
                      color: const Color(0xFFDDDDDD),
                      child: Image.asset('lib/assets/image1.jpg'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 20.0),
                      child: Text(
                        '경기필하모닉 마스터시리즈 X <마시모 자네티 & 엘사 드레이지>',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 25.0),
                      child: Text(
                        '날짜',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RaisedButton(
                      elevation: 0,
                      highlightElevation: 0,
                      onPressed: () {},
                      color: const Color(0xFF22BF86),
                      child: Text(
                        '7/2',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: StadiumBorder(),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 25.0),
                      child: Text(
                        '시간',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          RaisedButton(
                            elevation: 0,
                            highlightElevation: 0,
                            onPressed: () {},
                            //color: const Color(0xFF22BF86),
                            child: Text(
                              '13:30',
                              //style: TextStyle(color: Colors.white),
                            ),
                            shape: StadiumBorder(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RaisedButton(
                            elevation: 0,
                            highlightElevation: 0,
                            onPressed: () {},
                            color: const Color(0xFF22BF86),
                            child: Text(
                              '14:30',
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: StadiumBorder(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RaisedButton(
                            elevation: 0,
                            highlightElevation: 0,
                            onPressed: () {},
                            //color: const Color(0xFF22BF86),
                            child: Text(
                              '15:30',
                              //style: TextStyle(color: Colors.white),
                            ),
                            shape: StadiumBorder(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RaisedButton(
                            elevation: 0,
                            highlightElevation: 0,
                            onPressed: () {},
                            //color: const Color(0xFF22BF86),
                            child: Text(
                              '16:30',
                              //style: TextStyle(color: Colors.white),
                            ),
                            shape: StadiumBorder(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 25.0),
                      child: Text(
                        '좌석',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          RaisedButton(
                            elevation: 0,
                            highlightElevation: 0,
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Seat()));
                            },
                            //color: const Color(0xFF22BF86),
                            child: Text(
                              '좌석 살펴보기',
                              //style: TextStyle(color: Colors.white),
                            ),
                            shape: StadiumBorder(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30.0,
            child: RaisedButton(
              elevation: 10,
              highlightElevation: 5,
              color: const Color(0xFF22BF86),
              shape: StadiumBorder(),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 80, right: 80),
                child: Text(
                  '예매하기',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }
}
