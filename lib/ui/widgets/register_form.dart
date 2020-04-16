import 'package:flutter/material.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/shared/ui_helper.dart';
import 'package:marketting/ui/widgets/arrowDown_circle.dart';
import 'package:marketting/ui/widgets/redIconButton.dart';

class RegisterForm extends StatefulWidget {
  final VoidCallback onTap;
  RegisterForm({this.onTap});
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final regKey = GlobalKey<FormState>();
  TextEditingController regController = new TextEditingController();
  bool regSecureText = true;
  bool confSecureText = true;
  String _email, _username, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: regKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'ثبت نام',
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
            TextFormField(
              controller: regController,
              decoration: InputDecoration(hintText: 'نام کاربری'),
              validator: (val) =>
                  val.isEmpty ? 'نام کاربری نباید خالی باشد' : null,
              onSaved: (val) => _username = val,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'ایمیل'),
              validator: (val) =>
                  !val.contains('@') ? 'ایمیل درست نمی باشد' : null,
              onSaved: (val) => _email = val,
            ),
            TextFormField(
              obscureText: regSecureText,
              decoration: InputDecoration(
                hintText: 'رمز عبور ',
                suffixIcon: GestureDetector(
                  onLongPress: () {
                    setState(() {
                      regSecureText = false;
                    });
                  },
                  onLongPressUp: () {
                    setState(() {
                      regSecureText = true;
                    });
                  },
                  child: Icon(Icons.remove_red_eye),
                ),
              ),
              validator: (val) =>
                  val.length <= 5 ? 'رمز عبور نباید کمتر از 5 حرف باشد' : null,
              onSaved: (val) => _password = val,
            ),
            TextFormField(
              obscureText: confSecureText,
              decoration: InputDecoration(
                hintText: 'تکرار رمز عبور ',
                suffixIcon: GestureDetector(
                  onLongPress: () {
                    setState(() {
                      confSecureText = false;
                    });
                  },
                  onLongPressUp: () {
                    setState(() {
                      confSecureText = true;
                    });
                  },
                  child: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            UIhelper.verdicalSpaceMedium,
            RedIconButton(
              title: 'ثبت نام',
              onTap: (){
                var form=regKey.currentState;
                if(form.validate()){
                Navigator.of(context).pushNamed(HomeRoute);
              }}
            ),
            Spacer(),
            Text(
              'ثبت نام',
              style: TextStyle(fontSize: 19, height: 4),
            ),
            ArrowDownCircle(
              onTap: widget.onTap,
            )
          ],
        ));
  }
}
