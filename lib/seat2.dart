import 'package:flutter/material.dart';
import 'package:waa/seat3.dart';
import 'package:waa/threed.dart';

class Seat2 extends StatefulWidget {
  @override
  _Seat2State createState() => _Seat2State();
}

class _Seat2State extends State<Seat2> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, bottom: 10, left: 30),
                      child: Text(
                        '좌석선택',
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
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20, left: 30),
                child: Text('원하시는 구역을 선택해주세요'),
              ),
              Stack(
                children: [
                  FlatButton(
                    child: Image.asset(
                      'lib/assets/section.png',
                      width: MediaQuery.of(context).size.width,
                    ),
                    onPressed: () {},
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset(
                        'lib/assets/sectionA.png',
                        width: MediaQuery.of(context).size.width,
                      ),
                      Positioned(
                        left: 70,
                        bottom: 50,
                        child: FlatButton(
                          shape: CircleBorder(),
                          child: Image.asset(
                            'lib/assets/seatselect.png',
                            width: 90,
                            height: 90,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Seat3(),
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        right: 70,
                        bottom: 50,
                        child: FlatButton(
                          shape: CircleBorder(),
                          child: Image.asset(
                            'lib/assets/see3d.png',
                            width: 90,
                            height: 90,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThreeD(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                          child: Text(
                            'A구역',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0, left: 5.0),
                          child: Text(
                            '시야각    ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                          child: Text(
                            '소리',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                          child: Text(
                            '특징',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(height: 65),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                          child: Text(
                            '40,000원',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                          child: Text(
                            '시야각이 잘 확보되지 않고 소리가\n고르지 않다는 단점이 있지만\n왼쪽에 자리하는 협연자의 모습을 자세히\n볼 수 있다는 장점이 있다. \n피아니스트의 현란한 손놀림을 감상하시라!',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
