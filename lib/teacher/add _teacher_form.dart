import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class AddTeacherForm extends StatefulWidget {
  const AddTeacherForm({Key? key}) : super(key: key);

  @override
  _AddTeacherFormState createState() => _AddTeacherFormState();
}

class _AddTeacherFormState extends State<AddTeacherForm> {
  //==========class list
  String? selectedClass;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  //========================section
  String? selectedSection;
  List<String> item6 = [
    'It1',
    'It2',
    'It3',
    'It4',
    'It5',
    'It6',
    'It7',
    'It8',
  ];
  //=================================gender select
  String? selectedGender;
  List<String> item7 = [
    'Male',
    'Female',
    'Other',
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
        iconColor: iconcolor,

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
                        "TEACHER",
                        style: TextStyle(
                            color: headingcolor1, fontSize: headingsize2),
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
            padding: const EdgeInsets.only(top: 90),
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
                      "home > Teachers Details",
                      style: TextStyle(fontSize: textsize, color: textcolor1),
                    ),
                  ),
                  //============================new card
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Card(
                      color: backgroundcolor2,
                      margin: const EdgeInsets.only(
                          left: 30, right: 70, bottom: 16, top: 20),
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
                              "Teacher Information",
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
                            padding: const EdgeInsets.only(top: 15),
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
                                        child: Text("First Name"),
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
                                        child: Text("Last Name"),
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
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: items
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
                                            value: selectedClass,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedClass = value as String;
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
                                                color: boder,
                                              ),
                                              color: textcolor,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 300,
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
                                // =====================firs row of input form end
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
                                        padding: EdgeInsets.only(left: 36),
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
                                            items: item6
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
                                            value: selectedSection,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedSection =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 320,
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
                                            dropdownWidth: 312,
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
                                        child: Text("Gender"),
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
                                                    'Select Gender',
                                                    style: TextStyle(
                                                      fontSize: textsize,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: item7
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
                                            value: selectedGender,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedGender =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 320,
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
                                            dropdownWidth: 312,
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
                                //    =============third
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("ID Number"),
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
                                // =====================firs row of input form end
                              ],
                            ),
                          ),
                          //=========third row of input form start
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
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("Phone Number"),
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
                                        child: Text("E-Mail"),
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
                                //    =============third
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("Password"),
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
                              ],
                            ),
                          ),
                          //=========fourth row of input form start
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
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("Religion"),
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
                                //=======second
                                Flexible(
                                  flex: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Text("Address"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 0, 20, 0),
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
                              ],
                            ),
                          ),
                          //=========fifth row of input form start
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 36),
                                  child: Text("Upload Profile (500 X 500)"),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 130,
                                        padding: EdgeInsets.only(left: 15),
                                        child: FlatButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          color: buttoncolor,
                                          onPressed: () {},
                                          child: const Text(
                                            "Choose File",
                                            style: TextStyle(
                                                color: textcolor,
                                                fontSize: textsize2),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Text(
                                          "No File Chosen",
                                          style: TextStyle(fontSize: textsize3),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          //=========Sixth row of input form start
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(300, 20, 0, 0),
                                child: Container(
                                  width: 130,
                                  height: 40,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    color: buttoncolor,
                                    onPressed: () {},
                                    child: const Text(
                                      "Save",
                                      style: TextStyle(
                                          color: textcolor,
                                          fontSize: textsize1),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(100, 20, 0, 0),
                                child: Container(
                                  width: 130,
                                  height: 40,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
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
                        ],
                      ),

                      //============second card end
                    ),
                  ),
                ],
              ),
              //===================first card end
            ),
          ),

          //========================form end............
        ],
      ),
    );
    //============================= form start.........);
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