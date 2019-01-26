import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: LoginState(),
    );
  }
}

class LoginState extends StatefulWidget {
  @override
  _LoginStateState createState() => _LoginStateState();
}

class _LoginStateState extends State<LoginState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                children: <Widget>[
                  ClipPath(
              child: Image(
                image:AssetImage("assets/blue.png"),
              ),
              clipper: MyClipper(),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(120, 60, 0, 0),
                child: Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.lightBlueAccent),)),
              Container(
                padding: EdgeInsets.fromLTRB(230, 160, 10, 0),
                child: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  radius: 40,
                  child: Text("Add Photo",style: TextStyle(color: Colors.black),softWrap: true,),
                ),
              )
                ],
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
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
                  RaisedButton(
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
              ],
            ),
          )
                ],
        ),
      )
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();

    // path.lineTo(0.0,size.height/2);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width,0.0);
    // path.close();


    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}