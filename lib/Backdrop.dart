import 'package:flutter/material.dart';
import 'twopanels.dart';

class Backdrop extends StatefulWidget {
  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop> with SingleTickerProviderStateMixin{

  AnimationController controller;

  @override
    void initState() {
      super.initState();
      controller = new AnimationController(
        vsync: this,duration: Duration(seconds: 1),value: 1.0
      );
    }  

    @override
      void dispose() {
        super.dispose();
        controller.dispose();
      }

    bool get isPanelVisible{
      final AnimationStatus status = controller.status;
      return status == AnimationStatus.completed || status == AnimationStatus.forward;
    }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Punjai Ekta"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              controller.fling(velocity: isPanelVisible?-1.0:1.0);
            },
            icon: AnimatedIcon(
              icon: AnimatedIcons.close_menu,
              progress: controller.view,
            ), 
          ),
        ),
        body: new TwoPanels(controller: controller,),
      ),
      
    );
  }
}