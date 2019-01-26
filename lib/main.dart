import 'package:flutter/material.dart';
import 'homePage.dart';
import 'Backdrop.dart';
import 'design.dart';
import 'login.dart';
import 'transform.dart';


void main() => runApp(Trans());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.white54,
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Punjabi Ekta'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

    AnimationController _animationController,_animationController1;
    Animation<Offset> animation,delayedAnimation;
    Animation<Offset> animationOff;

    @override
      void initState() {
        super.initState();
        _animationController = new AnimationController(
          vsync: this,duration: Duration(seconds: 3) );
           _animationController1 = new AnimationController(
          vsync: this,duration: Duration(seconds: 2) );

          animation = Tween<Offset>(begin: Offset(-100, 10),end: Offset(0, 0)).animate(CurvedAnimation(
            curve: Curves.fastOutSlowIn,parent: _animationController
          ))..addListener((){
            setState(() {
                        });
          });

          animationOff=Tween<Offset>(begin: Offset(-100, 10),end: Offset(0, 0)).animate(CurvedAnimation(
            curve: Curves.easeInOut,parent: _animationController1,
          ))
          ..addListener((){
            setState(() {
                        });
          });
          

          _animationController.forward();
          _animationController1.forward();
      }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(254, 219, 208, 10),
        title: Text(widget.title,style: TextStyle(color: Colors.black),),centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
              child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: <Widget>[
               Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            SlideTransition(
                position: animation,
                child:  Container(
               margin: EdgeInsets.only(left: 30),
               child: Card(
                 color: Colors.transparent,
                 elevation: 25.0,
                 child: Hero(
                   tag: 'hhome',
                     child: GestureDetector(
                       onTap: (){
                          Navigator.push(context, 
                         new MaterialPageRoute(builder: (context) => HomePage()));
                       },
                         child: Image.asset("assets/house.png")
                     ),
                 ),
               ),
             ),
              ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 40.0),
             ),
             SlideTransition(
               position: animationOff,
                            child: Container(
                 child: Card(
                   color: Colors.transparent,
                   margin: EdgeInsets.zero,
                   elevation: 25.0,
                   child: Hero(
                       tag: 'ssocial',
                         child: GestureDetector(
                           onTap: (){
                              Navigator.push(context, 
                             new MaterialPageRoute(builder: (context) => Social()));
                           },
                             child: Image.asset("assets/calendar.png")
                         ),
                     ),
                 ),
               ),
             ),
              // Text(
              //   style: Theme.of(context).textTheme.display1,
              // ),
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SlideTransition(
                position: animation,
                    child: Container(
                    child: Card(
                   color: Colors.transparent,
                   margin: EdgeInsets.zero,
                   elevation: 25.0,
                   child: Image(
                     fit: BoxFit.contain,
                     image: AssetImage("assets/play.png"),
                   ),
             ),
                ),
              ),
            ],
          ),
           SizedBox(
            width: 40,
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             SlideTransition(
               position: animationOff,
                            child: Container(
                 child: Card(
                   color: Colors.transparent,
                   elevation: 25.0,
                   child: Image(
                     fit: BoxFit.contain,
                     image: AssetImage("assets/mail.png"),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 40.0),
             ),
             SlideTransition(
               position: animation,
                            child: Container(
                 margin: EdgeInsets.only(left: 30),
                 child: Card(
                   color: Colors.transparent,
                   margin: EdgeInsets.zero,
                   elevation: 25.0,
                   child: Image(
                     fit: BoxFit.contain,
                     image: AssetImage("assets/user.png"),
                   ),
                 ),
               ),
             ),
            ],
          ),
            ],
          ),
        ),
      ),
    );
  }
}
