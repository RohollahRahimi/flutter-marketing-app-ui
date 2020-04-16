import 'package:flutter/material.dart';
import 'package:marketting/ui/widgets/login-form.dart';
import 'package:marketting/ui/widgets/register_form.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _login = true;

  Widget rotatedContainer(width, form) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..rotateZ(35.36),
            child: FractionallySizedBox(
              widthFactor: 1.2,
              child: Container(
                height: width * 1.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffadc0ec),
                        offset: Offset(-3, -8),
                        blurRadius: 100,
                        spreadRadius: 20)
                  ],
                ),
                child:Transform(
                  transform:Matrix4.identity()..rotateZ(35),
                  ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                    width: width * 0.6, height: width * 1.57, child: form),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold( 
    body:Stack(
      children: <Widget>[
        Transform(
          transform: Matrix4.translationValues(width * 0.12, height * 0.27, 0),
          child: rotatedContainer(
              width,
              _login
                  ? LoginForm(
                      onTap: () {
                        setState(() {
                          _login = true;
                        });
                      },
                    )
                  : RegisterForm(
                      onTap: () {
                        setState(() {
                          _login = false;
                        });
                      },
                    )),
        ),
        Transform(
          transform: Matrix4.translationValues(width * -0.3, height * -0.75, 0),
          child: rotatedContainer(
              width,
              _login
                  ? RegisterForm(
                      onTap: () {
                        setState(() {
                          _login = false;
                        });
                      },
                    )
                  : LoginForm(
                      onTap: () {
                        setState(() {
                          _login = true;
                        });
                      },
                    )),
        ),
      ],
    ));
  }
}
