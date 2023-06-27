import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Container(
        width: widthScreen,
        height: heightScreen,
        decoration: BoxDecoration(
            color: Colors.amber[100],
            //border: Border.all(width: 3),
            borderRadius: BorderRadius.all(Radius.circular(50))
        ),
            child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: widthScreen,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(60, 40),
                              bottomRight: Radius.elliptical(60,40), topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.6, 0.8),
                            colors: <Color>[
                              Color.fromARGB(255, 37, 143, 253),
                              Color.fromARGB(255, 37, 143, 253),
                              Color.fromARGB(255, 37, 143, 253),
                              Color.fromARGB(255, 37, 143, 253),
                              Color.fromARGB(255, 37, 143, 253),
                              Color.fromARGB(255, 71, 198, 250),
                              Color.fromARGB(255, 73, 200, 244),
                              Color.fromARGB(255, 65, 193, 254),
                              Color.fromARGB(255, 78, 210, 210),
                              Color.fromARGB(255, 89, 223, 170),
                              Color.fromARGB(255, 89, 223, 170),
                            ],
                          ),
                        ),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage('lib/icons/apps1.png')),
                                  Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 2)
                                    ),
                                  ),
                                  Image(image: AssetImage('lib/icons/circle.png')),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
                              alignment: Alignment.center,
                              height: 45,
                              width: 350,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2),
                                  borderRadius: BorderRadius.all(Radius.circular(50))
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 205,
                        left: 30,
                        child: Container(
                          height: 60,
                          width: 330,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2)
                          ),
                          child: Row(
                            children: [

                            ],
                          ),
                        )
                    ),







                    Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: widthScreen,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                  //border: Border(top: BorderSide(color: Colors.white30, width: 3))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.home,
                              color: Color.fromARGB(255, 211, 239, 251), size: 35,),
                              Icon(Icons.work, color: Color.fromARGB(255, 211, 239, 251), size: 35,),
                              Icon(Icons.menu, color: Color.fromARGB(255, 211, 239, 251), size: 35,)
                            ],
                          )
                        ],
                      ),
                    )
                    )
                  ],
            )
        );

  }
}
