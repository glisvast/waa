import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if (_enabled) {
      _onPressed = () {
        Fluttertoast.showToast(
            msg: "200P 적립!!",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 30.0);
        Navigator.pop(context);
      };
    }

    Future.delayed(new Duration(milliseconds: 3000), () {
      setState(() {
        _enabled = true;
      });
    });

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    '공연장 안전수칙 영상',
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
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30),
            child: Text(
              '안전수칙 영상을 끝까지 보고 200포인트 받아가세요!',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: WebView(
              initialUrl: 'https://www.youtube.com/watch?v=ECkpClb_55Q',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
          /*
          Container(
            color: const Color(0xFF777777),
            height: 260,
            width: MediaQuery.of(context).size.width - 40,
            alignment: Alignment.center,
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: Text(
              'VIDEO',
              style: TextStyle(fontSize: 15),
            ),
          ),
          */
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 80.0, right: 80.0, top: 60),
                  child: RaisedButton(
                    elevation: 10,
                    highlightElevation: 5,
                    color: const Color(0xFF22BF86),
                    shape: StadiumBorder(),
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Text(
                        '200포인트 받기',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: _onPressed,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
