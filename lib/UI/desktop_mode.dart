import 'package:flutter/material.dart';
import 'package:projet_2cs_interface/UI/widgets/login_form.dart';


class DesktopMode extends StatefulWidget {
  @override
  _DesktopModeState createState() => _DesktopModeState();
}

class _DesktopModeState extends State<DesktopMode> {
  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;

    return Container(
      color: Color.fromRGBO(224, 245, 255, 1),
      child: Center(
        child: Container(
          height: heightSize * 0.7,
          width: widthSize * 0.7,
          child: Card(
            elevation: 30,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/ESI_Logo.png/1200px-ESI_Logo.png',
                          height: heightSize * 0.4, width: widthSize * 0.4, semanticLabel: 'test'),
                    )
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    color: Color.fromRGBO(41, 187, 255, 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Blue_computer_icon.svg/200px-Blue_computer_icon.svg.png',
                          height: heightSize * 0.2, width: widthSize * 0.15),
                        SizedBox(height: 20),
                        LoginForm(
                          0, 0.009, 16, 0.04, 0.01, 0.04,
                          75, 0.01, 0.007, 0.01, 0.006
                        )
                      ]
                    )
                  )
                )
              ]
            )
          )
        )
      )
    );
  }
}