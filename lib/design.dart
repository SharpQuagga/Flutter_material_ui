import 'package:flutter/material.dart';
import 'NewPage.dart';
import 'Video.dart';

class MyDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        accentColor: Colors.black,
        canvasColor: Colors.white,
        primaryColor: Colors.teal,
        primarySwatch: Colors.deepOrange,
        iconTheme: new IconThemeData(
          color: Colors.black
        ),
        primaryIconTheme: IconThemeData(
          color: Color.fromRGBO(238, 194, 19, 10),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(149, 153, 179, 10),
      ),
      home: Design(),
      routes: <String,WidgetBuilder>{
        "/a":(BuildContext context)=>new NewPAge(),
        "/b":(BuildContext context)=>new Design(),
      },
    );
  }
}

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: 
        //   Text("Home",style: TextStyle(color: Color.fromRGBO(238, 194, 19, 10),fontSize: 32,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold ),
        //   ),
        // centerTitle: true,
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
                 width: double.infinity,
                 height: 2300,
                    //margin: EdgeInsets.only(top: 100),
               padding: EdgeInsets.only(top: 1950),
                  color: Color.fromRGBO(62, 32, 85, 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                         SizedBox(width:30 ,),
                Material(
                  elevation: 30,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 180,
                    width: 220,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/q.png"),
                      fit: BoxFit.fill,
                    ),
                       ),
                  ),
                ),
                  SizedBox(width:30 ,),
                Material(
                  elevation: 30,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 180,
                    width: 220,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/qw.png"),
                      fit: BoxFit.fill,
                    ),
                       ),
                  ),
                ),
                  SizedBox(width:30 ,),
                Material(
                  elevation: 30,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 180,
                    width: 220,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/qq.png"),
                      fit: BoxFit.fill,
                    ),
                       ),
                  ),
                ),
                  SizedBox(width:30 ,),
                Material(
                  elevation: 30,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 180,
                    width: 220,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/qqq.png"),
                      fit: BoxFit.fill,
                    ),
                       ),
                  ),
                ),
                      ],
                    ),
                  ),
               ),
              



               Container(
                width: double.infinity,
                height: 2000,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
         color: Colors.white,
                ),
                child: new Column(
        children: <Widget>[
          SizedBox(height: 1925,),
          Row(
            children: <Widget>[
              SizedBox(
                width: 110,
              ),
          Text("Vidoes",style: TextStyle(color: Colors.black,fontSize: 32,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold ),)
            ],
          ),
        ],
                ),
              ),
                Container(
                height:1900,
                width: double.infinity,
               margin: EdgeInsets.only(top: 0),
               padding: EdgeInsets.only(top: 1800),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
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
                height:1800,
                width: double.infinity,
               margin: EdgeInsets.only(top: 0),
               padding: EdgeInsets.only(top: 1680),
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
                height:1670,
                width: double.infinity,
               margin: EdgeInsets.only(top: 0),
               padding: EdgeInsets.only(top: 1570),
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
                width: double.infinity,
                height: 1550,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
         color: Colors.white,
                ),
                child: new Column(
        children: <Widget>[
          SizedBox(height: 1450,),
          Row(
            children: <Widget>[
              SizedBox(
                width: 110,
              ),
          Text("Messages",style: TextStyle(color: Colors.black,fontSize: 32,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold ),)
            ],
          ),
        ],
                ),
              ),































              Container(
        padding: EdgeInsets.only(bottom: 10,left: 10,right: 10),
         decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
         color: Color.fromRGBO(136, 58, 193, 10),
         ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
            ),
             SizedBox(height: 950,),
            Row(
              children: <Widget>[
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
            Text("ਪੰਜਾਬੀ ਇਕਤਾ ",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: <Widget>[
              SizedBox(height: 20,)
              ],
            ),
            Text("ਸੁਖਪਾਲ ਸਿੰਘ ਖਹਿਰਾ ਇੱਕ ਪੜ੍ਹਿਆ ਲਿਖਿਆ, ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ ਹੈ ਜੋ ਪੰਜਾਬ ਦੇ ਭਖਦੇ ਮੁੱਦਿਆਂ 'ਤੇ ਆਪਣੇ ਦਲੇਰੀ ਭਰੇ ਪੱਖ ਲਈ ਜਾਣਿਆ ਜਾਂਦਾ ਹੈ।ਦੋ ਵਾਰ ਦੇ ਐੱਮ.ਐੱਲ.ਏ. ਖਹਿਰਾ ਵਿਧਾਨ ਸਭਾ ਦੇ ਅੰਦਰ ਅਤੇ ਬਾਹਰ ਆਪਣੀ ਬੇਬਾਕ ਭਾਸ਼ਣ ਤੇ ਲੋਕਹਿਤ ਮੁੱਦੇ ਚੁੱਕਣ ਲਈ ਜਾਣੇ ਜਾਂਦੇ ਹਨ।ਜਿਵੇਂ ਕਿ ਵਿਰੋਧੀ ਧਿਰ ਦੇ ਆਗੂ (ਐਲ.ਓ.ਪੀ.) ਸ਼੍ਰੀ ਖਹਿਰਾ ਨੇ ਨਿਡਰਤਾ ਨਾਲ ਕਾਂਗਰਸ ਸਰਕਾਰ ਦੀ ਹਮਾਇਤ ਨਾਲ ਚੱਲ ਰਹੇ ਵੱਖ ਵੱਖ ਤਰ੍ਹਾਂ ਦੇ ਮਾਫੀਆ ਨਾਲ ਲੜਾਈ ਕੀਤੀ। ਉਹਨਾਂ ਨੂੰ ਲੋਕਾਂ ਦੇ ਮੁੱਦਿਆਂ ਜਿਵੇਂ ਸਿੱਖਿਆ, ਸਿਹਤ ਸੰਭਾਲ, ਬੇਰੁਜ਼ਗਾਰੀ, ਵਾਤਾਵਰਨ ਆਦਿ ਨੂੰ ਉਭਾਰਨ ਲਈ ਜਾਣਿਆ ਜਾਂਦਾ ਹੈ। ਆਉ ਪੰਜਾਬੀ ਏਕਤਾ ਪਾਰਟੀ ਦਾ ਸਮਰਥਨ ਕਰਨ ਲਈ ਹੱਥ ਮਿਲਾਈਏ, ਤਾਂ ਜੋ ਪੰਜਾਬ ਨੂੰ ਸਾਫ ਸੁਥਰਾ ਸੂਬਾ ਬਣਾਉਣ ਅਤੇ ਇਸਦਾ ਅਸਲੀ ਮਾਣ ਸਤਿਕਾਰ ਬਹਾਲ ਕੀਤਾ ਜਾ ਸਕੇ।",softWrap: true,style: TextStyle(fontSize: 18,color: Colors.white,),)
            ,SizedBox(height: 30,)
          ],
        ),
              ),
              Container(
                decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        color: Color.fromRGBO(83,31,122, 10),
                ),
        padding: EdgeInsets.only(bottom: 10,left: 10,right: 10),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
            ),
             SizedBox(height: 460,),
            Row(
              children: <Widget>[
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
            Text("Punjabi Ekta ",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: <Widget>[
              SizedBox(height: 20,)
              ],
            ),
            Text("Sukhpal Singh Khaira is an educated,dynamic and firebrand mass leader who is known for his bold stand on the burning issues of Punjab. Two time Mla Mr Khaira is known for his oratory skills both within and outside the Vidhan Sabha. As Leader of Opposition (LoP) Mr Khaira fearlessly fought corruption and different types of mafia backed by the Congress government. He’s known to raise people’s issues like education ,healthcare ,unemployment ,environment etc vociferously. Let’s all join hands to support Punjabi Ekta Party,a mission to cleanse Punjab and restore its original glory.",softWrap: true,style: TextStyle(fontSize: 18,color: Colors.white,),),
          SizedBox(height: 40,),
          ],
        ),
              ),
              Container(
                height: 330,
               margin: EdgeInsets.only(top: 100),
               padding: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
                color: Color.fromRGBO(62, 32, 85, 10),
                ),
                child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(width:30 ,),
                Material(
                  elevation: 30,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 180,
                    width: 220,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/images.jpg"),
                      fit: BoxFit.cover,
                    ),
                       ),
                  ),
                ),
                SizedBox(width: 30,),
                Material(
                  elevation: 30,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                 child: Container(
                    height: 180,
                    width: 220,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/images(1).jpg"),
                      fit: BoxFit.cover,
                    ),
                       ),
                  ),
                ),
                SizedBox(width: 30,),
                 Material(
                  elevation: 30,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                 child: Container(
                    height: 180,
                    width: 220,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/images(2).jpg"),
                      fit: BoxFit.cover,
                    ),
                       ),
                  ),
                ),
                SizedBox(width: 30,),
                 Material(
                  elevation: 30,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                 child: Container(
                    height: 180,
                    width: 220,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/images(3).jpg"),
                      fit: BoxFit.cover,
                    ),
                       ),
                  ),
                ),
                SizedBox(width: 30,), Material(
                  elevation: 30,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                 child: Container(
                    height: 180,
                    width: 220,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/images(4).jpg"),
                      fit: BoxFit.cover,
                    ),
                       ),
                  ),
                ),
                SizedBox(width: 30,),
              ],
            ),
          ),
              ),
              Container(
                height: 120,
                color:  Color.fromRGBO(62, 32, 85, 10),
              ),
              Container(
                width: double.infinity,
                height: 190,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
         color: Colors.white,
                ),
                child: new Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 120,
              ),
          Text("Home",style: TextStyle(color: Color.fromRGBO(238, 194, 19, 10),fontSize: 32,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold ),),
            ],
          ),
          SizedBox(width: 30,),
         // SizedBox(height: 10,),
          Row(
            children: <Widget>[
              SizedBox(width: 15,),
              Container(
                width: 50,
                height: 50,
                 decoration: new BoxDecoration(
               color: Colors.white,
               image: new DecorationImage(
                 image: AssetImage("assets/photo.jpg"),
                 fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              )
              ),
                 ),
              SizedBox(width: 22,),
              Text("Sukhpal Singh Khaira",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
            ],
          ),
         Container(
           padding: EdgeInsets.only(left: 25,right: 7),
           child: new Column(
             children: <Widget>[
                SizedBox(width: 20,),
             SizedBox(height: 10,),
              Text("Sukhpal Singh Khaira is an Indian politician. He was Former leader of the Aam Aadmi Party and Former Leader of Opposition in Punjab Assembly.",softWrap: true,style: TextStyle(color: Colors.black,fontSize: 15),)
             ],
           ),
         )
        ],
                ),
              ),
            ],
          ),
      ), 
    );
  }
}