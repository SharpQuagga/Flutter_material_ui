import 'package:flutter/material.dart';

class TwoPanels extends StatefulWidget {
  @override
  _TwoPanelsState createState() => _TwoPanelsState();


   final AnimationController controller; 

   TwoPanels({this.controller});
}

class _TwoPanelsState extends State<TwoPanels> {

  static const header_height = 32.0;

  Animation<RelativeRect> getPanelAnimation(BoxConstraints constrains){
    final height = constrains.biggest.height;
    final backPanelHeight = height - header_height;  
    final frontPanelHeight = -header_height;

    return new RelativeRectTween(
      begin: new RelativeRect.fromLTRB(0.0, backPanelHeight, 0.0, frontPanelHeight),
      end:new RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0), 
    ) .animate(CurvedAnimation(
      parent: widget.controller,curve: Curves.linear
    ));
  }

  Widget _bothPanels(BuildContext context,BoxConstraints constrains){
    final ThemeData theme = Theme.of(context);

    return new Container(
      child: Stack(
        children: <Widget>[
          new Container(
            color: theme.primaryColor,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Container(
                    child: ListView(
                    children: <Widget>[
                      ListTile(
                       // leading: Icon(Icons.home,size: 50,),
                        onTap: (){},
                        title: Text("Home",style: TextStyle(fontSize: 30,color: Colors.white),),
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                      ListTile(
                        title: Text("Messages",style: TextStyle(fontSize: 30,color: Colors.white),),
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                      ListTile(
                        title: Text("Video",style: TextStyle(fontSize: 30,color: Colors.white),),
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                      ListTile(
                        title: Text("Event",style: TextStyle(fontSize: 30,color: Colors.white),),
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                      ListTile(
                        title: Text("Proflie",style: TextStyle(fontSize: 30,color: Colors.white),),
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                    ],
                  ),
                  
                  // Text("Home",style: TextStyle(fontSize: 30,color: Colors.white),),
                  // Padding(padding: EdgeInsets.symmetric(vertical: 4.0),),
                  // Text("Messages",style: TextStyle(fontSize: 30,color: Colors.white),),
                  // Padding(padding: EdgeInsets.symmetric(vertical: 4.0),),
                  // Text("Video",style: TextStyle(fontSize: 30,color: Colors.white),),
                  // Padding(padding: EdgeInsets.symmetric(vertical: 4.0),),
                  // Text("Event",style: TextStyle(fontSize: 30,color: Colors.white),),
                  // Padding(padding: EdgeInsets.symmetric(vertical: 4.0),),
                  // Text("Profile",style: TextStyle(fontSize: 30,color: Colors.white),),
                
              ),
            ),
          ),
          PositionedTransition(
            rect: getPanelAnimation(constrains),
               child: new Material(
              elevation: 12.0,
              borderRadius: new BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: new Column(
                children: <Widget>[
                  new Container(
                    height: header_height,
                    child: new Center(
                      child: new Text("Home",style: theme.textTheme.button,),
                    ),
                  ),
                  new Expanded(
                  child:  new Center(
                      child: Text("Front PAnel",style: TextStyle(fontSize: 32)),
                    )
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
 

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: _bothPanels,
    );
  }
}