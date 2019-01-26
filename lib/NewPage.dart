import 'package:flutter/material.dart';
import 'design.dart';

class NewPAge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyPage() ,
       routes: <String,WidgetBuilder>{
        "/a":(BuildContext context)=>new NewPAge(),
        "/b":(BuildContext context)=>new Design(),

      },
      theme: new ThemeData(
         primaryIconTheme: IconThemeData(
          color: Color.fromRGBO(238, 194, 19, 10),
        ),
      ),
    );
  }
}


class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
title: 
          Text("",style: TextStyle(color: Color.fromRGBO(238, 194, 19, 10),fontSize: 32,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold ),
          ),
        centerTitle: true,
        backgroundColor:Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.person,color: Color.fromRGBO(238, 194, 19, 10),),
          SizedBox(width: 20,)
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
             accountName: Text("User Name"),
              accountEmail: Text("john@example.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text("UN"),
              ),
            ),
            new ListTile(
              title: Text("Home",),
              trailing: new Icon(Icons.home),
               onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/b");}
            ),
            new ListTile(
              title: Text("Messages"),
              trailing: new Icon(Icons.calendar_today),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");}
            ),
            new ListTile(
              title: Text("Media"),
              trailing: new Icon(Icons.video_library),
            ),
            Divider(),
            new ListTile(
              title: Text("Events"),
              trailing: new Icon(Icons.picture_as_pdf),
            ),
            Divider(),
            new ListTile(
              title: Text("Login/Sign Up"),
              trailing: new Icon(Icons.picture_as_pdf),
            ),
          ],
        ),

      ),
      body: SingleChildScrollView(
              child: new Stack(
            children: <Widget>[
              Container(
                height:600,
                width: double.infinity,
               margin: EdgeInsets.only(top: 0),
               padding: EdgeInsets.only(top: 500),
                decoration: BoxDecoration(
     //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
                color: Colors.black,
                ),
                child: Row(
                    children: <Widget>[
                      SizedBox(width: 35,),
                      Container(
                width: 70,
                height: 70,
                 decoration: new BoxDecoration(
               color: Colors.blue,
               image: new DecorationImage(
                 image: AssetImage("assets/final.png"),
                 fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              )
              ),
                 ),
                      SizedBox(width: 20,),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                   padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Text("Sukhpal Singh",softWrap: true,style: TextStyle(fontSize: 15,color: Colors.white54),),
                        Text("An event updates",softWrap: true,style: TextStyle(fontSize: 20,color: Colors.white),)
                      ],
                    ),
                  ),
                    ],               
                ),
              ),
              Container(
                height:500,
                width: double.infinity,
               margin: EdgeInsets.only(top: 0),
               padding: EdgeInsets.only(top: 400),
                decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
                color: Colors.black,
                ),
                child: Row(
                    children: <Widget>[
                      SizedBox(width: 35,),
                      Container(
                width: 70,
                height: 70,
                 decoration: new BoxDecoration(
               color: Colors.blue,
               image: new DecorationImage(
                 image: AssetImage("assets/final.png"),
                 fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              )
              ),
                 ),
                      SizedBox(width: 20,),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                   padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Text("Sukhpal Singh",softWrap: true,style: TextStyle(fontSize: 15,color: Colors.white54),),
                        Text("An event updates",softWrap: true,style: TextStyle(fontSize: 20,color: Colors.white),)
                      ],
                    ),
                  ),
                    ],               
                ),
              ),
             Container(
                height:400,
                width: double.infinity,
               margin: EdgeInsets.only(top: 0),
               padding: EdgeInsets.only(top: 300),
                decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
                color: Colors.black,
                ),
                child: Row(
                    children: <Widget>[
                      SizedBox(width: 35,),
                      Container(
                width: 70,
                height: 70,
                 decoration: new BoxDecoration(
               color: Colors.blue,
               image: new DecorationImage(
                 image: AssetImage("assets/final.png"),
                 fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              )
              ),
                 ),
                      SizedBox(width: 20,),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                   padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Text("Sukhpal Singh",softWrap: true,style: TextStyle(fontSize: 15,color: Colors.white54),),
                        Text("An event updates",softWrap: true,style: TextStyle(fontSize: 20,color: Colors.white),)
                      ],
                    ),
                  ),
                    ],               
                ),
              ),
              Container(
                height:300,
                width: double.infinity,
               margin: EdgeInsets.only(top: 0),
               padding: EdgeInsets.only(top: 200),
                decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
                color: Colors.blue,
              
                ),
                child: Row(
                    children: <Widget>[
                      SizedBox(width: 35,),
                      Container(
                width: 70,
                height: 70,
                 decoration: new BoxDecoration(
               color: Colors.blue,
               image: new DecorationImage(
                 image: AssetImage("assets/final.png"),
                 fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              )
              ),
                 ),
                      SizedBox(width: 20,),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                   padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Text("Sukhpal Singh",softWrap: true,style: TextStyle(fontSize: 15,color: Colors.white54),),
                        Text("An event updates",softWrap: true,style: TextStyle(fontSize: 20,color: Colors.white),)
                      ],
                    ),
                  ),
                    ],               
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
               margin: EdgeInsets.only(top: 0),
               padding: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
                color: Colors.blue,
                 //border: Border(bottom: BorderSide(color: Colors.pink))
                ),
                child: Row(
                    children: <Widget>[
                      SizedBox(width: 35,),
                      Container(
                width: 70,
                height: 70,
                 decoration: new BoxDecoration(
               color: Colors.blue,
               image: new DecorationImage(
                 image: AssetImage("assets/final.png"),
                 fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              )
              ),
                 ),
                      SizedBox(width: 20,),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                   padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Text("Sukhpal Singh",softWrap: true,style: TextStyle(fontSize: 15,color: Colors.white54),),
                        Text("An event updates",softWrap: true,style: TextStyle(fontSize: 20,color: Colors.white),)
                      ],
                    ),
                  ),
                    ],               
                ),
              ),
             
              Container(
                width: double.infinity,
                height: 80,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
         color: Colors.white,
                ),
                child: new Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 90,
              ),
          Text("Messages",style: TextStyle(color: Colors.black,fontSize: 32,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold ),)
            ],
          ),
        ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}