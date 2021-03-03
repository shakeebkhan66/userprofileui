import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userprofileui/FadeAnimation.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/1.jpg'),
                        fit: BoxFit.cover,
                      )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3),
                          ]
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(1, Text(
                                "Dr Suleman Misbahi Sb",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                              ),
                            )),
                            SizedBox(height: 20.0),
                            Row(
                              children: <Widget>[
                                FadeAnimation(1.2,
                                Text(
                                  '800 Videos',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                )
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                FadeAnimation(1.3,
                                    Text(
                                      '50K Subscriber',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                      ),
                                    )
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                     Padding(padding: EdgeInsets.all(20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         FadeAnimation(1.6,
                         Text("Doctor Suleman Misbahi Shb is a Naqsbandi Sufi. He devoted his whole life for the humanity. He is trying his best to tell the nation about true Islam. He is my one of the great Murshid Kareem Guider.",
                         style: TextStyle(
                           color: Colors.grey,
                           height: 1.4,
                         ),
                         ),
                         ),
                         SizedBox(height: 40,),
                         FadeAnimation(1.6,
                           Text(
                             "Born",
                             style: TextStyle(
                                 color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                             ),
                           )
                         ),
                         SizedBox(height: 10,),
                         FadeAnimation(1.6,
                             Text(
                               "April, 15th 1986, Sialkot, Pakistan",
                               style: TextStyle(
                                   color: Colors.grey,
                               ),
                             )
                         ),
                         SizedBox(height: 20,),
                         FadeAnimation(1.6,
                             Text(
                               "Nationality",
                               style: TextStyle(
                                   color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                               ),
                             )
                         ),
                         SizedBox(height: 10,),
                         FadeAnimation(1.6,
                             Text(
                               "Pakistan",
                               style: TextStyle(
                                 color: Colors.grey,
                               ),
                             )
                         ),
                         SizedBox(height: 20,),
                         FadeAnimation(1.6,
                             Text(
                               "Videos",
                               style: TextStyle(
                                   color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                               ),
                             )
                         ),
                         SizedBox(height: 20.0,),
                         FadeAnimation(1.8,
                         Container(
                           height: 200,
                           child: ListView(
                             scrollDirection: Axis.horizontal,
                             children: <Widget>[
                               makeVideo(image: "assets/images/1.jpg"),
                               makeVideo(image: "assets/images/2.jpg"),
                               makeVideo(image: "assets/images/3.jpg"),
                               makeVideo(image: "assets/images/4.jpg"),
                             ],
                           ),
                         ),
                         ),
                         SizedBox(height: 20,),
                       ],
                     ),
                     )
                  ]),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(
                  2,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Align(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          color: Colors.white, 
                        ),
                      ),
                    )
                  )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget makeVideo({image}) {
    return AspectRatio(aspectRatio: 1.5/ 1,
    child: Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        )
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ]
            )
        ),
        child: Align(
          child: Icon(
            Icons.play_arrow, color: Colors.white, size: 70,
          ),
        ),
      ),
    ),
    );
  }
}


