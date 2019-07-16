import 'package:flutter/material.dart';
import 'package:waa/barcode0.dart';
import 'package:waa/info.dart';
import 'package:waa/mypage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _blockwidth = 140.0, _blockheight = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 15.0,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 5),
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "lib/assets/logo.png",
                width: 70,
                height: 30,
              ),
            ),
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
                    Container(
                      child: FlatButton(
                        child: Text(
                          '이승현',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyPage()));
                        },
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
      floatingActionButton: Container(
        height: 70.0,
        width: 70.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF22BF86),
            child: Image.asset(
              "lib/assets/barcode.png",
              width: 35,
              height: 35,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BarCode0()));
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10),
                  margin: EdgeInsets.only(bottom: 8),
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                            color: const Color(0xFFDDDDDD),
                            height: _blockheight,
                            width: _blockwidth,
                            child: Image.asset('lib/assets/image1.jpg'),
                          ),
                          Text('경기필하모닉 마스터...'),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 25,
                            child: OutlineButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Info()));
                              },
                              child: Text('지금예매'),
                              shape: StadiumBorder(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                            color: const Color(0xFFDDDDDD),
                            height: _blockheight,
                            width: _blockwidth,
                            child: Image.asset('lib/assets/image2.jpg'),
                          ),
                          Text('토요상설'),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 25,
                            child: OutlineButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Info()));
                              },
                              child: Text('지금예매'),
                              shape: StadiumBorder(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                            color: const Color(0xFFDDDDDD),
                            height: _blockheight,
                            width: _blockwidth,
                            child: Image.asset('lib/assets/image3.jpg'),
                          ),
                          Text('어울, 여울'),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 25,
                            child: OutlineButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Info()));
                              },
                              child: Text('지금예매'),
                              shape: StadiumBorder(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                            color: const Color(0xFFDDDDDD),
                            height: _blockheight,
                            width: _blockwidth,
                            child: Image.asset('lib/assets/image4.jpg'),
                          ),
                          Text('오후 4시'),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 25,
                            child: OutlineButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Info()));
                              },
                              child: Text('지금예매'),
                              shape: StadiumBorder(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 5.0, right: 5.0),
                            color: const Color(0xFFDDDDDD),
                            height: _blockheight,
                            width: _blockwidth,
                            child: Image.asset('lib/assets/image5.jpg'),
                          ),
                          Text('꼬마 클래식'),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 25,
                            child: OutlineButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Info()));
                              },
                              child: Text('지금예매'),
                              shape: StadiumBorder(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                    child: Text(
                      '나의 예매 현황',
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
              //margin: EdgeInsets.only(top: 2),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 128,
                    width: 90,
                    color: const Color(0xFFDDDDDD),
                    child: Image.asset('lib/assets/image1.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '경기필하모닉 마스터시리즈 X <마시...',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text('2019년 7월 15일'),
                      Text('11:30'),
                      Text('경기도문화의전당 대극장'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 128,
                    width: 90,
                    color: const Color(0xFFDDDDDD),
                    child: Image.asset('lib/assets/image4.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '오후 4시',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text('2019년 7월 20일'),
                      Text('14:30'),
                      Text('경기도문화의전당 대극장'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 128,
                    width: 90,
                    color: const Color(0xFFDDDDDD),
                    child: Image.asset('lib/assets/image2.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '토요상설',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text('2019년 7월 13일'),
                      Text('13:30'),
                      Text('경기도문화의전당 대극장'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              //margin: EdgeInsets.only(top: 2),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 128,
                    width: 90,
                    color: const Color(0xFFDDDDDD),
                    child: Image.asset('lib/assets/image1.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '경기필하모닉 마스터시리즈 X <마시...',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text('2019년 7월 2일'),
                      Text('13:30'),
                      Text('경기도문화의전당 대극장'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
