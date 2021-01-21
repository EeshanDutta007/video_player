import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _width = 0;

  static Matrix4 _pmat(num pv) {
    return new Matrix4(
      1.0, 0.0, 0.0, 0.0, //
      0.0, 1.0, 0.0, 0.0, //
      0.0, 0.0, 1.0, pv * 0.001, //
      0.0, 0.0, 0.0, 1.0,
    );
  }

  Matrix4 perspective = _pmat(1.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          children: [
            SizedBox(height: 50),
            TweenAnimationBuilder(
                child: Container(),
                tween: Tween<double>(begin: 5, end: 0),
                duration: Duration(milliseconds: 1000),
                builder: (BuildContext context, _val, Widget child) {
                  return Transform(
                    alignment: FractionalOffset.center,
                    transform: perspective.scaled(1.0, 1.0, 1.0)
                      ..rotateX(_val)
                      ..rotateY(0.0)
                      ..rotateZ(0.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/MentorMatch.png"),
                      radius: 80,
                    ),
                  );
                }),
            SizedBox(height: 50),
            Center(
              child: TweenAnimationBuilder(
                child: Container(),
                tween: Tween<double>(begin: 1, end: 0),
                duration: Duration(milliseconds: 400),
                builder: (BuildContext context, _val, Widget child) {
                  return Transform(
                    alignment: FractionalOffset.center,
                    transform: perspective.scaled(1.0, 1.0, 1.0)
                      ..rotateX(_val)
                      ..rotateY(0.0)
                      ..rotateZ(0.0),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TweenAnimationBuilder(
                          child: Container(),
                          duration: Duration(milliseconds: 700),
                          tween: Tween<double>(begin: 0, end: 250),
                          builder: (BuildContext context, _val, Widget child) {
                            return Container(
                                child: Column(
                              children: [
                                SizedBox(height: 30),
                                Container(
                                  width: _val,
                                  height: 55,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      hintText: 'Username',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: _val,
                                  height: 55,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      hintText: 'Password',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 50),
                                TweenAnimationBuilder(
                                    child: Container(),
                                    duration: Duration(milliseconds: 700),
                                    tween: Tween<double>(begin: 0, end: 50),
                                    builder: (BuildContext context, _val,
                                        Widget child) {
                                      return SizedBox(
                                        height: _val,
                                        width: _val * 3,
                                        child: RaisedButton(
                                            onPressed: () {},
                                            color: Colors.yellow,
                                            elevation: 8,
                                            child: Text("Login"),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                            )),
                                      );
                                    }),
                              ],
                            ));
                          }),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
