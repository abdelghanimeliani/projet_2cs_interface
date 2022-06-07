import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VncViewer extends StatefulWidget {
  const VncViewer({Key? key}) : super(key: key);

  @override
  State<VncViewer> createState() => _VncViewerState();
}

int ? data ;

class _VncViewerState extends State<VncViewer> {
  callme() async {
    await Future.delayed(Duration(seconds: 2));
   setState(() {
     data = 1 ;
   });
  }

  @override
  void initState() {
    super.initState();
    callme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(224, 245, 255, 1),
      body: Center(
        child: data == null ? CircularProgressIndicator() :
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Text(
              "connecter a l'adresse suivante depuis votre VNC viewer" ,
              style: TextStyle(
                fontSize: 20 ,
                color: Colors.black45 ,
                fontFamily: 'Poppins'
              ),
            ),
             SelectableText(
              "192.168.135.33:30170" ,
              style: TextStyle(
                  fontSize: 30 ,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87 ,
                  fontFamily: 'Poppins'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
