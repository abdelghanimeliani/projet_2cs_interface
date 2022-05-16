import 'package:flutter/material.dart';
import 'package:projet_2cs_interface/UI/widgets/login_form.dart';


class MobileMode extends StatefulWidget {
  @override
  _MobileModeState createState() => _MobileModeState();
}

class _MobileModeState extends State<MobileMode> {
  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height; 
    
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromRGBO(66, 105, 255, 1), Color.fromRGBO(66, 205, 255, 1)]
            )
          ),
          child: Column(
            children: [
              Image.asset('images/login-form.png', height: heightSize * 0.3, width: widthSize * 0.6),
              SingleChildScrollView(
                child: LoginForm(
                  0.007,
                  0.04,
                  widthSize * 0.04,
                  0.06,
                  0.04,
                  0.07,
                  widthSize * 0.09,
                  0.05,
                  0.032,
                  0.04,
                  0.032
                )
              )
            ]
          )
        )
      )
    );
  }
}