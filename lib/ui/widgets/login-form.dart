import 'package:flutter/material.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/widgets/arrowDown_circle.dart';
import 'package:marketting/ui/widgets/categoryRoom_circles.dart';
import 'package:marketting/ui/widgets/redIconButton.dart';


class LoginForm extends StatefulWidget {
  final VoidCallback onTap;
  LoginForm({this.onTap});
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool logSecureText = true;
  final logKey = GlobalKey<FormState>();
  TextEditingController logController = new TextEditingController();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: logKey,
        child: Column(
          children: <Widget>[
            Text(
              'ورود',
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'ایمیل'),
            ),
            TextFormField(
              obscureText: logSecureText,
              decoration: InputDecoration(
                hintText: 'رمز عبور',
                suffixIcon: GestureDetector(
                  onLongPress: () {
                    setState(() {
                      logSecureText = false;
                    });
                  },
                  onLongPressUp: () {
                    setState(() {
                      logSecureText = true;
                    });
                  },
                  child: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: null,
                child: Text(
                  'فراموشی رمز عبور؟',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 35)),
           RedIconButton(
             title: 'ورود',
             onTap: (){
                 Navigator.of(context).pushNamed(HomeRoute); 
             },
           ),
            Spacer(),
            Text(
              'ورود',
              style: TextStyle(fontSize: 20, height: 4),
            ),
            ArrowDownCircle(
              onTap: widget.onTap,
            )
          ],
        ));    
  }
}
