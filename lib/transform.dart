import 'package:flutter/material.dart';

class Trans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tranform(),
    );
  }
}

class Tranform extends StatefulWidget {
  @override
  _TranformState createState() => _TranformState();
}

class _TranformState extends State<Tranform> with TickerProviderStateMixin {
  AnimationController _animationController, _animationController1;
  Animation<Offset> animation, animationOff,animationButton;
  Animation<double> animationSize, delayedSize;

  @override
  void initState() {
    super.initState();
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController1 =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));

    animationSize = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        curve: Curves.fastOutSlowIn, parent: _animationController))
      ..addListener(() {
        setState(() {
          //set state
        });
      });

    delayedSize = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.75, 1.0,curve: Curves.fastOutSlowIn),
    ))
      ..addListener(() {
        setState(() {});
      });

    animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(100, 100))
        .animate(CurvedAnimation(
            curve: Curves.fastOutSlowIn, parent: _animationController))
          ..addListener(() {
            setState(() {});
          });

    animationOff = Tween<Offset>(begin: Offset(-100, 10), end: Offset(0, 0))
        .animate(CurvedAnimation(
      curve: Curves.easeInOut,
      parent: _animationController1,
    ))
          ..addListener(() {
            setState(() {});
          });

     animationButton= Tween<Offset>(begin: Offset(100, 1), end: Offset(0, 0))
        .animate(CurvedAnimation(
      curve: Curves.easeInOut,
      parent: _animationController1,
    ))
          ..addListener(() {
            setState(() {});
          });     

    _animationController.forward();
    _animationController1.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizeTransition(
                   axisAlignment: -3.0,
                   axis: Axis.vertical,
                    sizeFactor: animationSize,
                    child: ClipPath(
                      child: Image(
                        image: AssetImage("assets/blue.png"),
                      ),
                      clipper: MyClipper(),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(120, 60, 0, 0),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 30, color: Colors.lightBlueAccent),
                      )),
                  SizeTransition(
                    sizeFactor: delayedSize,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(230, 160, 10, 0),
                      child: CircleAvatar(
                        backgroundColor: Colors.cyan,
                        radius: 40,
                        child: Text(
                          "Add Photo",
                          style: TextStyle(color: Colors.black),
                          softWrap: true,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
               Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: SlideTransition(
              position: animationOff,
                          child: Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Name",hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20),),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                   Padding(padding: EdgeInsets.only(bottom: 20),),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Mobile No",hintText: "Moblie No",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ), Padding(padding: EdgeInsets.only(bottom: 20),),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          SlideTransition(
            position: animationButton,
            child:  RaisedButton(
                    color: Colors.blue,
                    child: Text("Sign Up",),
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                    onPressed:(){},
                     shape: BeveledRectangleBorder(
                        side: BorderSide(color: Colors.yellow[300],width: 3),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      highlightColor: Colors.indigo,
                  ),
          )
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
