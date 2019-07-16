import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool _value = false;

  void onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

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
                        '마이페이지',
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
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 5.0),
                    child: Text(
                      '이승현',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 5.0),
                    child: Text(
                      ' 님',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                        child: Text(
                          '성별',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Text(
                          '생년월일',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Text(
                          '아이디(이메일)   ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Text(
                          '휴대폰 번호',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Text(
                          '내 포인트',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Text(
                          '아트슬라이드',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 5.0),
                        child: Text(
                          '남',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Text(
                          '1974.02.04',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Text(
                          'damian0415@naver.com',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Text(
                          '010-4857-9435',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Text(
                          '230P',
                        ),
                      ),
                      Container(
                        height: 35,
                        padding: const EdgeInsets.only(top: 10.0, left: 5.0),
                        child: Switch(
                          value: _value,
                          onChanged: (bool value) {
                            onChanged(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
