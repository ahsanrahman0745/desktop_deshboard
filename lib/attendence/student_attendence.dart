// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_admin_scaffold/admin_scaffold.dart';
// import 'package:desktop_deshboard/attendence/attendence_constant.dart';
//
// class StudentAttendence extends StatefulWidget {
//   const StudentAttendence({Key? key}) : super(key: key);
//
//   @override
//   State<StudentAttendence> createState() => _StudentAttendenceState();
// }
//
// class _StudentAttendenceState extends State<StudentAttendence> {
//   //===============================for student Attendence form
//   //==========current session
//   String? selectedCurrentSession1;
//   List<String> currentseasion1 = [
//     'Item1',
//     'Item2',
//     'Item3',
//     'Item4',
//     'Item5',
//     'Item6',
//     'Item7',
//     'Item8',
//   ];
//   //=========promote to session
//   String? selectedPromoteToSession1;
//   List<String> promotetosession1 = [
//     'Im1',
//     'Im2',
//     'Im3',
//     'Im4',
//     'Im5',
//     'Im6',
//     'Im7',
//     'Im8',
//   ];
//   //===========promote from class
//   String? selectedPromoteFromClass1;
//   List<String> promotefromclass1 = [
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//   ];
//   //================promotion to class
//   String? selectedPromotionToClass1;
//   List<String> promotiontoclass1 = [
//     '1sh',
//     '2sh',
//     '3sh',
//     '4sh',
//     '5sh',
//     '6sh',
//     '7sh',
//     '8sh',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return AdminScaffold(
//       sideBar: SideBar(
//         //===== borderColor
//         borderColor: backgroundcolor,
//         //=====background color
//         backgroundColor: backgroundcolor,
//         //====text and fontsize
//         textStyle: const TextStyle(
//           color: textcolor,
//           fontSize: textsize1,
//         ),
//         iconColor: Colors.black,
//
//         items: const [
//           //=======teacher................
//           MenuItem(
//             title: 'Teacher',
//             children: [
//               MenuItem(
//                 title: 'All Taecher',
//                 icon: Icons.person_add_alt_1_outlined,
//                 //  route: '/secondLevelItem1',
//               ),
//               MenuItem(
//                 title: 'Profile',
//                 icon: Icons.person_add_alt_1_outlined,
//                 //route: '/secondLevelItem2',
//               ),
//               MenuItem(
//                 title: 'Add Teacher',
//                 icon: Icons.person_add_alt_1_outlined,
//                 //route: '/secondLevelItem2',
//               ),
//             ],
//           ),
//           //====student..........
//           MenuItem(
//             title: 'Student',
//             children: [
//               MenuItem(
//                 title: 'All Student',
//                 icon: Icons.person_add_alt_1_outlined,
//                 //  route: '/secondLevelItem1',
//               ),
//               MenuItem(
//                 title: 'Student Details',
//                 icon: Icons.person_add_alt_1_outlined,
//                 //route: '/secondLevelItem2',
//               ),
//               MenuItem(
//                 title: 'Admit Form',
//                 icon: Icons.person_add_alt_1_outlined,
//                 //route: '/secondLevelItem2',
//               ),
//             ],
//           ),
//         ],
//         selectedRoute: '/',
//         onSelected: (item) {
//           if (item.route != null) {
//             Navigator.of(context).pushNamed(item.route!);
//           }
//         },
//         header: Container(
//           height: 180,
//           width: double.infinity,
//           color: backgroundcolor,
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   children: [
//                     const Icon(
//                       Icons.dashboard,
//                       size: headingsize,
//                       color: textcolor,
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                         text: "Dashboard ",
//                         style: TextStyle(
//                           fontSize: headingsize1,
//                           // fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Row(
//                 children: [
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 76.0,
//                         ),
//                         child: Image.asset("images/logo.png"),
//                         // CircleAvatar(
//                         //   // radius: 40.0,
//                         //   backgroundImage: AssetImage(
//                         //     "images/logo.png",
//                         //   ),
//                         // ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(left: 74.0, top: 12),
//                         child: Text(
//                           "School name",
//                           style: TextStyle(color: textcolor),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       //============================= form start.........
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Container(
//             color: backgroundcolor1,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0, left: 50),
//                   child: Column(
//                     children: const [
//                       AutoSizeText(
//                         "attendence",
//                         style: TextStyle(
//                             color: headingcolor1,
//                             fontSize: headingsize3,
//                             fontWeight: FontWeight.bold),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           //=================================first card
//           Padding(
//             padding: const EdgeInsets.only(top: 100),
//             child: Card(
//               margin: const EdgeInsets.all(0),
//               shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40),
//                   topRight: Radius.circular(40),
//                 ),
//               ),
//               child: Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       //===========Text line
//                       Padding(
//                         padding: EdgeInsets.only(left: 50, top: 20),
//                         child: Text(
//                           "home > Student attendence",
//                           style:
//                               TextStyle(fontSize: textsize, color: textcolor1),
//                         ),
//                       ),
//                     ],
//                   ),
//                   //============================new card
//                   Padding(
//                     padding: const EdgeInsets.only(top: 50),
//                     child: Card(
//                       elevation: 6,
//                       color: backgroundcolor3,
//                       margin: const EdgeInsets.only(
//                           left: 40, right: 40, bottom: 370, top: 20),
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(20),
//                         ),
//                       ),
//
//                       //================================first heading
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
//                             child: Text(
//                               "checkout student attendance",
//                               style: TextStyle(
//                                   color: textcolor2,
//                                   fontSize: textsize4,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           //===========divider line
//                           const Divider(
//                             color: line,
//                             height: 1,
//                           ),
//                           //=====================firs row of dropdown button
//                           Padding(
//                             padding: const EdgeInsets.only(top: 30),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 //======first
//                                 Flexible(
//                                   flex: 3,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       const Padding(
//                                         padding: EdgeInsets.only(left: 20),
//                                         child: Text("current Session"),
//                                       ),
//                                       Container(
//                                         margin: const EdgeInsets.fromLTRB(
//                                             20, 0, 20, 0),
//                                         child: DropdownButtonHideUnderline(
//                                           child: DropdownButton2(
//                                             isExpanded: true,
//                                             hint: Row(
//                                               children: const [
//                                                 Expanded(
//                                                   child: Text(
//                                                     'Current Session',
//                                                     style: TextStyle(
//                                                       fontSize: textsize5,
//                                                       color: textcolor1,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             items: currentseasion1
//                                                 .map((item) =>
//                                                     DropdownMenuItem<String>(
//                                                       value: item,
//                                                       child: Text(
//                                                         item,
//                                                         style: const TextStyle(
//                                                           fontSize: textsize,
//                                                           color: textcolor1,
//                                                         ),
//                                                       ),
//                                                     ))
//                                                 .toList(),
//                                             value: selectedCurrentSession1,
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 selectedCurrentSession1 =
//                                                     value as String;
//                                               });
//                                             },
//                                             buttonHeight: 32,
//                                             buttonWidth: 220,
//                                             dropdownMaxHeight: 150,
//                                             buttonPadding:
//                                                 const EdgeInsets.only(
//                                                     left: 14, right: 14),
//                                             buttonDecoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(0),
//                                               border: Border.all(
//                                                 color: Colors.black,
//                                               ),
//                                               color: Colors.white,
//                                             ),
//                                             itemPadding: const EdgeInsets.only(
//                                                 left: 14, right: 14),
//                                             dropdownWidth: 220,
//                                             dropdownDecoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(0),
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 //======second
//                                 Flexible(
//                                   flex: 3,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       const Padding(
//                                         padding: EdgeInsets.only(left: 20),
//                                         child: Text("promote to session"),
//                                       ),
//                                       Container(
//                                         margin: const EdgeInsets.fromLTRB(
//                                             20, 0, 20, 0),
//                                         child: DropdownButtonHideUnderline(
//                                           child: DropdownButton2(
//                                             isExpanded: true,
//                                             hint: Row(
//                                               children: const [
//                                                 Expanded(
//                                                   child: Text(
//                                                     'promote to session',
//                                                     style: TextStyle(
//                                                       fontSize: textsize5,
//                                                       color: textcolor1,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             items: promotetosession1
//                                                 .map((item) =>
//                                                     DropdownMenuItem<String>(
//                                                       value: item,
//                                                       child: Text(
//                                                         item,
//                                                         style: const TextStyle(
//                                                           fontSize: textsize,
//                                                           color: textcolor1,
//                                                         ),
//                                                       ),
//                                                     ))
//                                                 .toList(),
//                                             value: selectedPromoteToSession1,
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 selectedPromoteToSession1 =
//                                                     value as String;
//                                               });
//                                             },
//                                             buttonHeight: 32,
//                                             buttonWidth: 220,
//                                             dropdownMaxHeight: 150,
//                                             buttonPadding:
//                                                 const EdgeInsets.only(
//                                                     left: 14, right: 14),
//                                             buttonDecoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(0),
//                                               border: Border.all(
//                                                 color: Colors.black,
//                                               ),
//                                               color: Colors.white,
//                                             ),
//                                             itemPadding: const EdgeInsets.only(
//                                                 left: 14, right: 14),
//                                             dropdownWidth: 220,
//                                             dropdownDecoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(0),
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 //=======third
//                                 Flexible(
//                                   flex: 3,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       const Padding(
//                                         padding: EdgeInsets.only(left: 20),
//                                         child: Text("promote from class"),
//                                       ),
//                                       Container(
//                                         margin: const EdgeInsets.fromLTRB(
//                                             20, 0, 20, 0),
//                                         child: DropdownButtonHideUnderline(
//                                           child: DropdownButton2(
//                                             isExpanded: true,
//                                             hint: Row(
//                                               children: const [
//                                                 Expanded(
//                                                   child: Text(
//                                                     'promote from class',
//                                                     style: TextStyle(
//                                                       fontSize: textsize5,
//                                                       color: textcolor1,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             items: promotefromclass1
//                                                 .map((item) =>
//                                                     DropdownMenuItem<String>(
//                                                       value: item,
//                                                       child: Text(
//                                                         item,
//                                                         style: const TextStyle(
//                                                           fontSize: textsize,
//                                                           color: textcolor1,
//                                                         ),
//                                                       ),
//                                                     ))
//                                                 .toList(),
//                                             value: selectedPromoteFromClass1,
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 selectedPromoteFromClass1 =
//                                                     value as String;
//                                               });
//                                             },
//                                             buttonHeight: 32,
//                                             buttonWidth: 220,
//                                             dropdownMaxHeight: 150,
//                                             buttonPadding:
//                                                 const EdgeInsets.only(
//                                                     left: 14, right: 14),
//                                             buttonDecoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(0),
//                                               border: Border.all(
//                                                 color: Colors.black,
//                                               ),
//                                               color: Colors.white,
//                                             ),
//                                             itemPadding: const EdgeInsets.only(
//                                                 left: 14, right: 14),
//                                             dropdownWidth: 220,
//                                             dropdownDecoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(0),
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 //======fourth
//                                 Flexible(
//                                   flex: 3,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       const Padding(
//                                         padding: EdgeInsets.only(left: 20),
//                                         child: Text("promotion to class "),
//                                       ),
//                                       Container(
//                                         margin: const EdgeInsets.fromLTRB(
//                                             20, 0, 20, 0),
//                                         child: DropdownButtonHideUnderline(
//                                           child: DropdownButton2(
//                                             isExpanded: true,
//                                             hint: Row(
//                                               children: const [
//                                                 Expanded(
//                                                   child: Text(
//                                                     'promotion to class ',
//                                                     style: TextStyle(
//                                                       fontSize: textsize5,
//                                                       color: textcolor1,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             items: promotiontoclass1
//                                                 .map((item) =>
//                                                     DropdownMenuItem<String>(
//                                                       value: item,
//                                                       child: Text(
//                                                         item,
//                                                         style: const TextStyle(
//                                                           fontSize: textsize,
//                                                           color: textcolor1,
//                                                         ),
//                                                       ),
//                                                     ))
//                                                 .toList(),
//                                             value: selectedPromotionToClass1,
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 selectedPromotionToClass1 =
//                                                     value as String;
//                                               });
//                                             },
//                                             buttonHeight: 32,
//                                             buttonWidth: 220,
//                                             dropdownMaxHeight: 150,
//                                             buttonPadding:
//                                                 const EdgeInsets.only(
//                                                     left: 14, right: 14),
//                                             buttonDecoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(0),
//                                               border: Border.all(
//                                                 color: Colors.black,
//                                               ),
//                                               color: Colors.white,
//                                             ),
//                                             itemPadding: const EdgeInsets.only(
//                                                 left: 14, right: 14),
//                                             dropdownWidth: 220,
//                                             dropdownDecoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(0),
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   //======================Attendance calender
//                   Padding(
//                     padding: const EdgeInsets.only(left: 40),
//                     child: Row(
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }