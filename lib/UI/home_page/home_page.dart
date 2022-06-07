import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hover_widget/hover_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:projet_2cs_interface/UI/vncviewerpage.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Color.fromRGBO(224, 245, 255, 1),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left:30 , right: 30 ) ,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonFeedback(
                        child: GestureDetector(
                          onTap: () async {
                            final Uri _url = Uri.parse('http://192.168.135.37:30165');
                            await launchUrl(
                              _url,
                              mode: LaunchMode.platformDefault,
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Colors.blueAccent,
                                ),
                                color: Color.fromRGBO(224, 245, 255, 1),
                            ),
                            width: 300,
                            height: 300,
                            child: Image.asset("assets/images/postgress.png"),

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ) ,
                      Text("Postgresql" , style: TextStyle(fontSize: 30 , fontFamily: "Poppins" , color: Colors.black87),)
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ) ,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonFeedback(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: VncViewer()));
                          },
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.blueAccent,
                              ),
                              color: Color.fromRGBO(224, 245, 255, 1),
                            ),
                            width: 300,
                            height: 300,
                            child: Image.asset("assets/images/pt.png"),

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ) ,
                      Text("Packet tracer" , style: TextStyle(fontSize: 30 , fontFamily: "Poppins" , color: Colors.black87),)
                    ],

                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
