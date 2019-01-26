import 'package:flutter/material.dart';
import 'main.dart';
import 'package:carousel_pro/carousel_pro.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: PageView.builder(
             reverse: true,
            controller: PageController(viewportFraction: 1.0),
           // itemCount: images.length,
           itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.blue,
                child: new Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 8.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                      SingleChildScrollView(
                   child: new Container(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        height: 200.0,
                        child: new Carousel(
                            boxFit: BoxFit.cover,
                            images: [
                              AssetImage('assets/images.jpg'),
                              AssetImage('assets/images(1).jpg'),
                              AssetImage('assets/images(2).jpg'),
                              AssetImage('assets/images(3).jpg'),
                              AssetImage('assets/images(4).jpg'),
                              AssetImage('assets/images(5).jpg'),
                            ],
                            autoplay: true,
                            dotColor: Colors.yellow,
                            animationCurve: Curves.fastOutSlowIn,
                            animationDuration: Duration(seconds: 1),
                            autoplayDuration: Duration(seconds: 2),
                            dotBgColor: Colors.transparent,
                            dotSize: 2,   
                        )
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: new Text("Sukhpal Singh Khaira is an educated,dynamic and firebrand mass leader who is known for his bold stand on the burning issues of Punjab. Two time Mla Mr Khaira is known for his oratory skills both within and outside the Vidhan Sabha. As Leader of Opposition (LoP) Mr Khaira fearlessly fought corruption and different types of mafia backed by the Congress government. He’s known to raise people’s issues like education ,healthcare ,unemployment ,environment etc vociferously. Let’s all join hands to support Punjabi Ekta Party,a mission to cleanse Punjab and restore its original glory.",
                        style: TextStyle(fontSize: 15,wordSpacing: 2),
                        )
                        ),
                        Container(
                        margin: EdgeInsets.symmetric(horizontal: 1,vertical: 10),
                        child: Image(
                          image: AssetImage('assets/images(5).jpg'),
                        ), 
                        ),
                         Container(
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: new Text("ਸੁਖਪਾਲ ਸਿੰਘ ਖਹਿਰਾ ਇੱਕ ਪੜ੍ਹਿਆ ਲਿਖਿਆ, ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ ਹੈ ਜੋ ਪੰਜਾਬ ਦੇ ਭਖਦੇ ਮੁੱਦਿਆਂ 'ਤੇ ਆਪਣੇ ਦਲੇਰੀ ਭਰੇ ਪੱਖ ਲਈ ਜਾਣਿਆ ਜਾਂਦਾ ਹੈ।ਦੋ ਵਾਰ ਦੇ ਐੱਮ.ਐੱਲ.ਏ. ਖਹਿਰਾ ਵਿਧਾਨ ਸਭਾ ਦੇ ਅੰਦਰ ਅਤੇ ਬਾਹਰ ਆਪਣੀ ਬੇਬਾਕ ਭਾਸ਼ਣ ਤੇ ਲੋਕਹਿਤ ਮੁੱਦੇ ਚੁੱਕਣ ਲਈ ਜਾਣੇ ਜਾਂਦੇ ਹਨ।ਜਿਵੇਂ ਕਿ ਵਿਰੋਧੀ ਧਿਰ ਦੇ ਆਗੂ (ਐਲ.ਓ.ਪੀ.) ਸ਼੍ਰੀ ਖਹਿਰਾ ਨੇ ਨਿਡਰਤਾ ਨਾਲ ਕਾਂਗਰਸ ਸਰਕਾਰ ਦੀ ਹਮਾਇਤ ਨਾਲ ਚੱਲ ਰਹੇ ਵੱਖ ਵੱਖ ਤਰ੍ਹਾਂ ਦੇ ਮਾਫੀਆ ਨਾਲ ਲੜਾਈ ਕੀਤੀ। ਉਹਨਾਂ ਨੂੰ ਲੋਕਾਂ ਦੇ ਮੁੱਦਿਆਂ ਜਿਵੇਂ ਸਿੱਖਿਆ, ਸਿਹਤ ਸੰਭਾਲ, ਬੇਰੁਜ਼ਗਾਰੀ, ਵਾਤਾਵਰਨ ਆਦਿ ਨੂੰ ਉਭਾਰਨ ਲਈ ਜਾਣਿਆ ਜਾਂਦਾ ਹੈ। ਆਉ ਪੰਜਾਬੀ ਏਕਤਾ ਪਾਰਟੀ ਦਾ ਸਮਰਥਨ ਕਰਨ ਲਈ ਹੱਥ ਮਿਲਾਈਏ, ਤਾਂ ਜੋ ਪੰਜਾਬ ਨੂੰ ਸਾਫ ਸੁਥਰਾ ਸੂਬਾ ਬਣਾਉਣ ਅਤੇ ਇਸਦਾ ਅਸਲੀ ਮਾਣ ਸਤਿਕਾਰ ਬਹਾਲ ਕੀਤਾ ਜਾ ਸਕੇ।",
                        style: TextStyle(fontSize: 15,wordSpacing: 2),
                        )
                        ),
                    ],
                  ),
                ),
            ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
    );
  }
}




class Home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 10.0,
       // elevation: 20,
        title: Row(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
             Image(image: new AssetImage("assets/splashcut.jpeg"),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 25),
               child: Text("About Punjabi Ekta"),
             ),
            Padding(
              padding: EdgeInsets.only(left: 17),
             child:  Hero(
           tag: 'hhome',
           child: Image.asset("assets/house.png")
         ),),
             // child: Icon(Icons.person,color: Colors.yellow,)),
          ],
        ),
      ),
          body: SingleChildScrollView(
               child: new Container(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    height: 200.0,
                    child: new Carousel(
                        boxFit: BoxFit.cover,
                        images: [
                          AssetImage('assets/images.jpg'),
                          AssetImage('assets/images(1).jpg'),
                          AssetImage('assets/images(2).jpg'),
                          AssetImage('assets/images(3).jpg'),
                          AssetImage('assets/images(4).jpg'),
                          AssetImage('assets/images(5).jpg'),
                        ],
                        autoplay: true,
                        dotColor: Colors.yellow,
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(seconds: 1),
                        autoplayDuration: Duration(seconds: 2),
                        dotBgColor: Colors.transparent,
                        dotSize: 2,   
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: new Text("Sukhpal Singh Khaira is an educated,dynamic and firebrand mass leader who is known for his bold stand on the burning issues of Punjab. Two time Mla Mr Khaira is known for his oratory skills both within and outside the Vidhan Sabha. As Leader of Opposition (LoP) Mr Khaira fearlessly fought corruption and different types of mafia backed by the Congress government. He’s known to raise people’s issues like education ,healthcare ,unemployment ,environment etc vociferously. Let’s all join hands to support Punjabi Ekta Party,a mission to cleanse Punjab and restore its original glory.",
                    style: TextStyle(fontSize: 15,wordSpacing: 2),
                    )
                    ),
                    Container(
                    margin: EdgeInsets.symmetric(horizontal: 1,vertical: 10),
                    child: Image(
                      image: AssetImage('assets/images(5).jpg'),
                    ), 
                    ),
                     Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: new Text("ਸੁਖਪਾਲ ਸਿੰਘ ਖਹਿਰਾ ਇੱਕ ਪੜ੍ਹਿਆ ਲਿਖਿਆ, ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ ਹੈ ਜੋ ਪੰਜਾਬ ਦੇ ਭਖਦੇ ਮੁੱਦਿਆਂ 'ਤੇ ਆਪਣੇ ਦਲੇਰੀ ਭਰੇ ਪੱਖ ਲਈ ਜਾਣਿਆ ਜਾਂਦਾ ਹੈ।ਦੋ ਵਾਰ ਦੇ ਐੱਮ.ਐੱਲ.ਏ. ਖਹਿਰਾ ਵਿਧਾਨ ਸਭਾ ਦੇ ਅੰਦਰ ਅਤੇ ਬਾਹਰ ਆਪਣੀ ਬੇਬਾਕ ਭਾਸ਼ਣ ਤੇ ਲੋਕਹਿਤ ਮੁੱਦੇ ਚੁੱਕਣ ਲਈ ਜਾਣੇ ਜਾਂਦੇ ਹਨ।ਜਿਵੇਂ ਕਿ ਵਿਰੋਧੀ ਧਿਰ ਦੇ ਆਗੂ (ਐਲ.ਓ.ਪੀ.) ਸ਼੍ਰੀ ਖਹਿਰਾ ਨੇ ਨਿਡਰਤਾ ਨਾਲ ਕਾਂਗਰਸ ਸਰਕਾਰ ਦੀ ਹਮਾਇਤ ਨਾਲ ਚੱਲ ਰਹੇ ਵੱਖ ਵੱਖ ਤਰ੍ਹਾਂ ਦੇ ਮਾਫੀਆ ਨਾਲ ਲੜਾਈ ਕੀਤੀ। ਉਹਨਾਂ ਨੂੰ ਲੋਕਾਂ ਦੇ ਮੁੱਦਿਆਂ ਜਿਵੇਂ ਸਿੱਖਿਆ, ਸਿਹਤ ਸੰਭਾਲ, ਬੇਰੁਜ਼ਗਾਰੀ, ਵਾਤਾਵਰਨ ਆਦਿ ਨੂੰ ਉਭਾਰਨ ਲਈ ਜਾਣਿਆ ਜਾਂਦਾ ਹੈ। ਆਉ ਪੰਜਾਬੀ ਏਕਤਾ ਪਾਰਟੀ ਦਾ ਸਮਰਥਨ ਕਰਨ ਲਈ ਹੱਥ ਮਿਲਾਈਏ, ਤਾਂ ਜੋ ਪੰਜਾਬ ਨੂੰ ਸਾਫ ਸੁਥਰਾ ਸੂਬਾ ਬਣਾਉਣ ਅਤੇ ਇਸਦਾ ਅਸਲੀ ਮਾਣ ਸਤਿਕਾਰ ਬਹਾਲ ਕੀਤਾ ਜਾ ਸਕੇ।",
                    style: TextStyle(fontSize: 15,wordSpacing: 2),
                    )
                    ),
                ],
              ),
            ),
          ),
    );
  }
}


class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
             Container(
               margin: EdgeInsets.symmetric(horizontal: 10),
               child: Image(image: new AssetImage("assets/splashcut.jpeg"),
               ),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 65),
               child: Text("Social"),
             ),
              Hero(
           tag: 'ssocial',
           child: Image.asset("assets/calendar.png")
         ),
          ],
        ),
      ),
      body: new Center(
        child: new Text("Coming Soon !!",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 30,fontWeight: FontWeight.bold,),
      ),
      ),
    );
  }
}

class Msg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
       appBar: AppBar(
         automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
             Container(
               margin: EdgeInsets.symmetric(horizontal: 10),
               child: Image(image: new AssetImage("assets/splashcut.jpeg"),
               ),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 65),
               child: Text("Messaegs"),
             ),
          ],
        ),
      ),
          body: Container(
            height: 200,
            width: 360,
        color: Colors.blueAccent,
        child: Card(
          elevation: 6,
          child: GestureDetector(
              onTap: (){
                print("Pressed");
                showDialog(
          context: context,
          builder: (BuildContext context) { 
            return AlertDialog(
            title: new Text("ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ"),
            content: new Text("ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ"),
            actions: <Widget>[  
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Column(
                  children: <Widget>[
                     Container(
                margin: EdgeInsetsDirectional.only(top: 20,bottom: 20),
                child: new Text("ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ",style: TextStyle(color: Colors.blueAccent,fontSize: 20),)
                ),
                 Container(
                margin: EdgeInsetsDirectional.only(start: 20,bottom: 20,end: 20),
                child: new Text("ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ ਗਤੀਸ਼ੀਲ ਤੇ ਨਿੱਧੜਕ ਜਨਤਕ ਆਗੂ",style: TextStyle(color: Colors.black,fontSize: 15),)
                ),
                  ],
              ),
          ),
        ),
      ),
    );
  }

}
