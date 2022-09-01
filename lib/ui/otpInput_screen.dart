// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// //import 'packagepin_code_fieldspin_code_fields.dart';
//
//
// class OtpInputScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _OtpInputScreenState();
//   }
// }
//
// class _OtpInputScreenState extends State<OtpInputScreen> {
//
//   late final String phoneNumber;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_outlined, color: Colors.white),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.topLeft,
//                 margin: const EdgeInsets.only(top: 16, left: 28),
//                 child: const Text(
//                   "Verify Your Mobile Number",
//                   style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       fontStyle: FontStyle.normal,
//                       color: Colors.white),
//                 ),
//               ),
//               Container(
//                 alignment: Alignment.topLeft,
//                 margin: EdgeInsets.only(top: 16, left: 28),
//                 child: const Text(
//                   "We sent an 4 digit SMS code on",
//                   style: TextStyle(
//                       fontFamily: 'Questrial',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w300,
//                       fontStyle: FontStyle.normal,
//                       color: Colors.white),
//                 ),
//               ),
//               Container(
//                 alignment: Alignment.topLeft,
//                 margin: EdgeInsets.only(top: 4, left: 28),
//                 child: const Text(
//                   "+8801318370722",
//                   style: TextStyle(
//                     fontFamily: 'Questrial',
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600,
//                     fontStyle: FontStyle.normal,
//                     color: Color(0xff1877F2),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 33),
//
//               ),
//               Container(
//                 alignment: Alignment.topLeft,
//                 margin: const EdgeInsets.only(top: 33, left: 28),
//                 child: RichText(
//                   text: TextSpan(
//                       text: "Code not received? ",
//                       style: const TextStyle(
//                         fontFamily: 'Questrial',
//                         color: Colors.white,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.normal,
//                       ),
//                       children: [
//                         TextSpan(
//                             text: "Send again",
//                             style: const TextStyle(
//                               fontFamily: 'Questrial',
//                               color: Color(0xff1877F2),
//                               fontSize: 14,
//                               fontWeight: FontWeight.w600,
//                               fontStyle: FontStyle.normal,
//                             ),
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 // Navigator.push(
//                                 //   context,
//                                 //   MaterialPageRoute(
//                                 //       builder: (context) => SignInScreen()),
//                                 // );
//                               }),
//                       ]),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 80),
//                 child: Center(
//                   child: ElevatedButton(
//                     onPressed: () {
//                       showDialog(
//                         context: context,
//                         builder: (ctx) => AlertDialog(
//                           backgroundColor: Colors.black,
//                           title: const Text(
//                             "Allow the application to read the messege and enter the code",
//                             style: TextStyle(
//                                 fontSize: 16,
//                                 fontFamily: 'Questrial',
//                                 color: Colors.white),
//                           ),
//                           content: const Text(
//                               "Code 2420 for confirmation in the aplication",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   fontFamily: 'Questrial',
//                                   color: Colors.white),
//                             textAlign: TextAlign.center,
//                           ),
//                           actions: <Widget>[
//                             Row(
//                               children: [
//                                 Expanded(
//                                   flex: 1,
//                                   child: TextButton(
//                                     onPressed: () {
//                                       Navigator.of(ctx).pop();
//                                     },
//                                     child: Container(
//                                       //alignment: Alignment.topRight,
//                                      // color: Color(0xff4048BF),
//                                       padding: const EdgeInsets.only(
//                                           top: 10, right: 50, left: 5,  bottom: 10),
//                                       child: const Text(
//                                         "Reject",
//                                         style: TextStyle(color: Colors.white),
//                                         textAlign: TextAlign.center,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 1,
//                                   child: TextButton(
//                                     onPressed: () {
//                                       Navigator.of(ctx).pop();
//                                     },
//                                     child: Container(
//                                      // decoration: BoxDecoration,
//                                       alignment: Alignment.topLeft,
//                                       color: Color(0xff4048BF),
//                                       padding: const EdgeInsets.only(
//                                           top: 10, left: 50,  bottom: 10),
//                                       child: const Text(
//                                         "Allow",
//                                         style: TextStyle(color: Colors.white),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                     child: const Text("Show alert Dialog box"),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
