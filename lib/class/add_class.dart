import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'add_class_constant.dart';

class AddClass extends StatefulWidget {
  const AddClass({Key? key}) : super(key: key);

  @override
  State<AddClass> createState() => _AddClassState();
}

class _AddClassState extends State<AddClass> {
  //===============================for Class
  //==========class list
  String? selectedAddClass;
  List<String> addclass = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  //==========section list
  String? selectedAddSection;
  List<String> addsection = [
    'Im1',
    'Im2',
    'Im3',
    'Im4',
    'Im5',
    'Im6',
    'Im7',
    'Im8',
  ];
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      sideBar: SideBar(
        //===== borderColor
        borderColor: backgroundcolor,
        //=====background color
        backgroundColor: backgroundcolor,
        //====text and fontsize
        textStyle: const TextStyle(
          color: textcolor,
          fontSize: textsize1,
        ),
        iconColor: Colors.black,

        items: const [
          //=======teacher................
          MenuItem(
            title: 'Teacher',
            children: [
              MenuItem(
                title: 'All Taecher',
                icon: Icons.person_add_alt_1_outlined,
                //  route: '/secondLevelItem1',
              ),
              MenuItem(
                title: 'Profile',
                icon: Icons.person_add_alt_1_outlined,
                //route: '/secondLevelItem2',
              ),
              MenuItem(
                title: 'Add Teacher',
                icon: Icons.person_add_alt_1_outlined,
                //route: '/secondLevelItem2',
              ),
            ],
          ),
          //====student..........
          MenuItem(
            title: 'Student',
            children: [
              MenuItem(
                title: 'All Student',
                icon: Icons.person_add_alt_1_outlined,
                //  route: '/secondLevelItem1',
              ),
              MenuItem(
                title: 'Student Details',
                icon: Icons.person_add_alt_1_outlined,
                //route: '/secondLevelItem2',
              ),
              MenuItem(
                title: 'Admit Form',
                icon: Icons.person_add_alt_1_outlined,
                //route: '/secondLevelItem2',
              ),
            ],
          ),
        ],
        selectedRoute: '/',
        onSelected: (item) {
          if (item.route != null) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
        header: Container(
          height: 180,
          width: double.infinity,
          color: backgroundcolor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.dashboard,
                      size: headingsize,
                      color: textcolor,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: "Dashboard ",
                        style: TextStyle(
                          fontSize: headingsize1,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 76.0,
                        ),
                        child: Image.asset("images/logo.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 74.0, top: 12),
                        child: Text(
                          "School name",
                          style: TextStyle(color: textcolor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //============================= form start.........
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: backgroundcolor1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 50),
                  child: Column(
                    children: const [
                      AutoSizeText(
                        "CLASS",
                        style: TextStyle(
                            color: headingcolor1, fontSize: headingsize3),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, right: 50),
                  child: Center(
                    child: Column(
                      children: const [
                        Icon(Icons.print),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //==========================first Card
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Card(
              margin: const EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  //===========first line
                  const Padding(
                    padding: EdgeInsets.only(left: 40, top: 20),
                    child: Text(
                      "home > Add Class",
                      style: TextStyle(fontSize: textsize, color: textcolor1),
                    ),
                  ),

                  //============================new card
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Card(
                      color: backgroundcolor2,
                      margin: const EdgeInsets.only(
                          left: 30, right: 60, bottom: 16, top: 10),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      //================================first heading
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Class  Information",
                              style: TextStyle(
                                  color: textcolor1,
                                  fontSize: textsize1,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //===========divider line
                          const Divider(
                            color: line,
                            height: 1,
                          ),
                          //==========================first row of input form
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                //========first
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("Teacher Name"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 0, 0, 0),
                                        child: TextField(
                                          showCursor: false,
                                          cursorColor: textcolor1,
                                          decoration: InputDecoration(
                                            fillColor: textcolor,
                                            filled: true,
                                            isDense: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 10),
                                            enabledBorder: myinputborder(),
                                            focusedBorder: myfocusborder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //    =============Second
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("ID"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 0, 0, 0),
                                        child: TextField(
                                          showCursor: false,
                                          cursorColor: textcolor1,
                                          decoration: InputDecoration(
                                            fillColor: textcolor,
                                            filled: true,
                                            isDense: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 10),
                                            enabledBorder: myinputborder(),
                                            focusedBorder: myfocusborder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //    =============third
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("Class"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 0, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Select Class',
                                                    style: TextStyle(
                                                      fontSize: textsize,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: addclass
                                                .map((item) =>
                                                    DropdownMenuItem<String>(
                                                      value: item,
                                                      child: Text(
                                                        item,
                                                        style: const TextStyle(
                                                          fontSize: textsize,
                                                          color: textcolor1,
                                                        ),
                                                      ),
                                                    ))
                                                .toList(),
                                            value: selectedAddClass,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedAddClass =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 300,
                                            dropdownMaxHeight: 150,
                                            buttonPadding:
                                                const EdgeInsets.only(
                                                    left: 14, right: 14),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                              color: Colors.white,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 300,
                                            dropdownDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //=========second row of input form start
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                //========first
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 34),
                                        child: Text("Section"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 0, 0, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Section',
                                                    style: TextStyle(
                                                      fontSize: textsize,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: addsection
                                                .map((item) =>
                                                    DropdownMenuItem<String>(
                                                      value: item,
                                                      child: Text(
                                                        item,
                                                        style: const TextStyle(
                                                          fontSize: textsize,
                                                          color: textcolor1,
                                                        ),
                                                      ),
                                                    ))
                                                .toList(),
                                            value: selectedAddSection,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedAddSection =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 330,
                                            buttonPadding:
                                                const EdgeInsets.only(
                                                    left: 14, right: 14),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              border: Border.all(
                                                color: boder,
                                              ),
                                              color: textcolor,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 330,
                                            dropdownMaxHeight: 150,
                                            dropdownDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              color: textcolor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //    =============Second
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("Batch year"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 0, 0, 0),
                                        child: TextField(
                                          showCursor: false,
                                          cursorColor: textcolor1,
                                          decoration: InputDecoration(
                                            fillColor: textcolor,
                                            filled: true,
                                            isDense: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 10),
                                            enabledBorder: myinputborder(),
                                            focusedBorder: myfocusborder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //    =============third
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("Date Of Birth"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 0, 20, 0),
                                        child: TextField(
                                          showCursor: false,
                                          cursorColor: textcolor1,
                                          decoration: InputDecoration(
                                            fillColor: textcolor,
                                            filled: true,
                                            isDense: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 10),
                                            enabledBorder: myinputborder(),
                                            focusedBorder: myfocusborder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // ================second row of input form end
                              ],
                            ),
                          ),
                          //=====================third row of input form start
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Row(
                              children: [
                                //================first
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("Total Student"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 0, 0, 0),
                                        child: TextField(
                                          showCursor: false,
                                          cursorColor: textcolor1,
                                          decoration: InputDecoration(
                                            fillColor: textcolor,
                                            filled: true,
                                            isDense: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 10),
                                            enabledBorder: myinputborder(),
                                            focusedBorder: myfocusborder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //=====second
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [],
                                  ),
                                ),
                                //=============third
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [],
                                  ),
                                ),
                              ],
                            ),
                            //=======================third row of input form end
                          ),
                          //============fourth row of input form  start
                          Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(310, 30, 0, 0),
                                  child: Container(
                                    width: 150,
                                    height: 40,
                                    child: FlatButton(
                                      color: buttoncolor,
                                      onPressed: () {},
                                      child: const Text(
                                        "ADD",
                                        style: TextStyle(
                                            color: textcolor,
                                            fontSize: textsize1),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(180, 30, 0, 0),
                                  child: Container(
                                    width: 150,
                                    height: 40,
                                    child: FlatButton(
                                      color: buttoncolor1,
                                      onPressed: () {},
                                      child: const Text(
                                        "Reset",
                                        style: TextStyle(
                                            color: textcolor1,
                                            fontSize: textsize1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
      //Outline border type for TextFeild
      borderSide: BorderSide(color: boder),
    );
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: boder),
    );
  }
}