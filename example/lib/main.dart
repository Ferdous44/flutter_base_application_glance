import 'package:flutter/material.dart';

import 'vision_detector_views/object_detector_view.dart';
import 'vision_detector_views/text_detector_view.dart';
import "package:velocity_x/velocity_x.dart";
// 
// 
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
// 
  runApp(MyApp());
}
// 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // 
// 
              // 
      // 
    );
    // 
  }
}
// 
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Glance').text.xl4.bold.white.make().shimmer(primaryColor: Color.fromARGB(255, 65, 6, 129),secondaryColor:  Colors.white),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
              child: Column(
                children: [
                  // 
                        CustomCard('Object Detection', ObjectDetectorView()),
                        CustomCard('Text Recognition', TextRecognizerView()),
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                        // 
                 
                 
                 
                 
                 
                 
                 
                      
                      
                      
                      
                      
                      
                     
                   
                ],
                ),
                onPressed: (){
// 
                    Navigator.pushNamed(context, '/second');
// 
                },
// 
              ),
                ),
              ),
            ),
          ),
        );
  }
}
// 
class CustomCard extends StatelessWidget {
  final String _label;
  final Widget _viewPage;
  final bool featureCompleted;
// 
  const CustomCard(this._label, this._viewPage, {this.featureCompleted = true});
// 
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        tileColor: Theme.of(context).primaryColor,
        title: Text(
          _label,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          if (!featureCompleted) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content:
                    const Text('This feature has not been implemented yet')));
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => _viewPage));
          }
        },
      ),
    );
  // 
} }
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 





// 
// import 'dart:convert';
// 
// import 'package:alan_voice/alan_voice.dart';
//import 'package:alan_voice/alan_callback.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import "package:velocity_x/velocity_x.dart";
// 
// import 'vision_detector_views/object_detector_view.dart';
// import 'vision_detector_views/text_detector_view.dart';
// 
// 
// void main() {
  // runApp(MyApp());
// 
// 
// 
  // AlanVoice.addButton(
    //  "76c74a57f59ffdde0b631483eeae5ade2e956eca572e1d8b807a3e2338fdd0dc/stage", // Your Alan AI project ID
    //  buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT);
 // AlanVoice.callbacks.add((command) => _handleCommand(command.data));
// 
  // 
//  }
 
// _handleCommand(Map<String, dynamic> data) {
 // p
 //}
//  
  // 
// 
// class MyApp extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
    // return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // home: Home(),
    // );
  // }
// }
// 
// class Home extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
    // return Scaffold(
      // drawer: Drawer(),
      // 
      // 
      // appBar: AppBar(
        // title: Text('Glance').text.xl4.bold.white.make().shimmer(primaryColor: Color.fromARGB(255, 65, 6, 129),
        // secondaryColor:  Colors.white),
        //backgroundColor: Colors.transparent,
        // centerTitle: true,
        // elevation: 0.0,
      // ),
      // body: 
      //  SafeArea(
// 
        // 
        // 
        //  child: Center(
          // 
          //  child: SingleChildScrollView(
            //  child: Padding(
              // padding: EdgeInsets.symmetric(horizontal: 16),
              // child: ElevatedButton(
                // child: Column(
                  // children: [
                    // CustomCard('Object Detection', ObjectDetectorView()),
                    // SizedBox(height: 20),
                    // CustomCard('Text Recognition', TextRecognizerView()),
                  // ],
                // ),
                // onPressed: () {
                  //Handle button press
                  // Navigator.pushNamed(context, '/second');
                // },
              // ),
            // ),
          // ),
        // ),
      // ),
      // / Stack(
      // /  children: [
      // /    VxAnimatedBox().size(context.screenWidth, context.screenHeight)
      // /    .withGradient(LinearGradient(colors:
      // /     [
      // /            AIColors.primaryColor1,
      // /            AIColors.primaryColor2,
      // /         ],
      // /         begin: Alignment.topLeft, 
      // /         end:Alignment.bottomRigh,
      // /         ),
      // /      
      // /    ),
      // /      )
      // /      .make(),
      // /  ],
        // )
    // 
        // 
// 
      // );
    // 
  // }
// }
// 
// 
// 
// class CustomCard extends StatelessWidget {
  // final String _label;
  // final Widget _viewPage;
  // final bool featureCompleted;
// 
  // const CustomCard(this._label, this._viewPage, {this.featureCompleted = true});
// 
  // @override
  // Widget build(BuildContext context) {
    // return Card(
      // elevation: 5,
      // margin: EdgeInsets.only(bottom: 10),
      // child: ListTile(
        // tileColor: Theme.of(context).primaryColor,
        // title: Text(
          // _label,
          // style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        // ),
        // onTap: () {
          // if (!featureCompleted) {
            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              // content: const Text('This feature has not been implemented yet'),
            // ));
          // } else {
            // Navigator.push(
              // context,
              // MaterialPageRoute(builder: (context) => _viewPage),
            // );
          // }
        // },
      // ),
    // );
  // }
// }
// 