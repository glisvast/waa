import 'package:flutter/material.dart';
import 'package:waa/ticketing0.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
            color: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 10),
                            child: Text(
                              '공연 정보',
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
                      width: 320,
                      height: 453,
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
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'lib/assets/profile_info.png',
                        width: 320,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'lib/assets/profile.png',
                        width: 320,
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
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Ticketing0()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
