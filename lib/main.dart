// import 'package:firebase_core/firebase_core.dart';
// import 'package:universal_platform/universal_platform.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:animated_background/animated_background.dart';

import 'package:classnotif/mainPage.dart';
import 'package:flutter/material.dart';
import 'front.dart';

bool flag;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  flag = await getVisitFlag();
  if (flag != true) print(flag);
  runApp(MaterialApp(home: MyApp()));
  // FirebaseMessaging.instance.getToken().then(print);
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

// Future<dynamic> myBackgroundHandler(Map<String, dynamic> message) {
//   print(message['link']);
//   return MyAppState()._showNotification(message);
// }

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: flag == false ? 'front' : 'mainPage',
      routes: {
        'front': (context) => front(),
        'mainPage': (context) => mainPage()
      },
    );
  }
} // {
//   setVisitFlag();//in frnt class fun
//   Navigator.push(context, MaterialPageRoute(builder: (context) => front()));
// } else
//     return new Container(
//         child: new Stack(fit: StackFit.expand, children: <Widget>[
//       new Image.asset(
//         'assets/bg.jpg',
//         fit: BoxFit.fitHeight,
//       ),
//       new Scaffold(
//         // backgroundColor: Colors.blue,
//         appBar: AppBar(
//           toolbarHeight: 70,
//           backgroundColor: Colors.black26.withOpacity(0.5),
//           title: Text(
//             'Now Never miss class ;-)',
//             style: TextStyle(
//               fontFamily: "cursive",
//               fontSize: 30,
//               foreground: Paint()
//                 // ..style = PaintingStyle.stroke
//                 // ..strokeWidth = 1
//                 ..color = Colors.white60,
//             ),
//           ),
//           titleTextStyle: TextStyle(fontFamily: 'Raleway'),
//           elevation: 0.0,
//         ),
//         backgroundColor: Colors.transparent,
//         body: Center(
//             child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10.5),
//                 child: new BackdropFilter(
//                     filter: new ui.ImageFilter.blur(
//                       sigmaX: 7.5,
//                       sigmaY: 7.5,
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
//                       child: Container(
//                           height: 80,
//                           width: MediaQuery.of(context).size.width / 2,
//                           // margin: EdgeInsets.all(150.0),
//                           // padding: EdgeInsets.all(200.0),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFB4C56C).withOpacity(0.02),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15.0)),
//                           ),
//                           child: Container(
//                               padding: EdgeInsets.all(12),
// // padding: EdgeInsets.only.left(12)-->quite helpful

//                               // child: Expanded( --->this is really use full for row widget

//                               child: Row(children: [
//                                 Expanded(
//                                     flex: 3,
//                                     child: Opacity(
//                                         opacity: 0.5, child: raisedButton())),
//                                 Expanded(
//                                   flex: 1,
//                                   child: FlatButton(
//                                       onPressed: refresh,
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(50)),
//                                       // onPressed: refresh,
//                                       child: Icon(
//                                         Icons.refresh_outlined,
//                                         color: Colors.white,
//                                       )),
//                                 )
//                               ]))),
//                     )))),
//         // )
//       ),
//     ]));
//   }
// }

// //Leave on background
// // ignore: non_constant_identifier_names
// // void firebaseOnMessage() {
// //   FirebaseMessaging.onMessage.listen((message) {
// //     print(message);
// //     setState(() {
// //       link = message.notification.body;
// //       print("yessss");
// //     });
// //   });
// // }

// // void onFirebaseOpenedApp() {
// //   FirebaseMessaging.onMessageOpenedApp.listen((message) {
// //     print("yoo this is on message");
// //     setState(() {
// //       link = message.notification.body;
// //     });
// //   });
// // }

// // @override
// // void initState() {
// //   firebaseOnMessage();
// //   onFirebaseOpenedApp();
// //   // var initializationSettingsAndroid =
// //   //     AndroidInitializationSettings('@mipmap/ic_launcher');

// //   // var initializationSettings =
// //   //     InitializationSettings(android: initializationSettingsAndroid);
// //   // flutterLocalNotificationsPlugin.initialize(initializationSettings,
// //   //     onSelectNotification: selectNotification);
// //   super.initState();

// // _firebaseMessaging.configure(
// //     onBackgroundMessage: myBackgroundHandler,
// //     onMessage: (Map<String, dynamic> message) async {
// //       print("onMessage: $message");
// //       setState(() {
// //         link = message['notification']['body'];
// //       });
// //       showDialog(
// //           context: context,
// //           builder: (context) {
// //             return AlertDialog(
// //               title: Text('new message arived'),
// //               content: Text(
// //                   'i want ${message['notification']['title']} for ${message['notification']['body']}'),
// //               actions: <Widget>[
// //                 FlatButton(
// //                   child: Text('Ok'),
// //                   onPressed: () {
// //                     Navigator.of(context).pop();
// //                   },
// //                 ),
// //               ],
// //             );
// //           });
// //     },
// //     onResume: (Map<String, dynamic> message) async {
// //       // print("this is resume");
// //       // print(message['data']['link']);
// //       setState(() {
// //         link = message['data']['link'];
// //       });
// //       _launchURL();
// //     },
// //     onLaunch: (Map<String, dynamic> message) async {
// //       // print("this is launch");
// //       // print(message['data']['link']);
// //       setState(() {
// //         link = message['data']['link'];
// //       });
// //       _launchURL();
// //     });

// // getTokenz();
// // }}
