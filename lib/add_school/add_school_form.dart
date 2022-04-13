import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:desktop_deshboard/add_school/add_school_constant.dart';

class AddSchoolForm extends StatefulWidget {
  const AddSchoolForm({Key? key}) : super(key: key);

  @override
  State<AddSchoolForm> createState() => _AddSchoolFormState();
}

class _AddSchoolFormState extends State<AddSchoolForm> {
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: backgroundcolor,
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
          Card(
            margin: const EdgeInsets.fromLTRB(0, 20, 10, 10),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        "ADD SCHOOL",
                        style: TextStyle(
                            color: headingcolor2,
                            fontSize: headingsize3,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    //===========divider line
                    Divider(
                      color: line,
                      height: 1,
                    ),
                  ],
                ),
                //============================new card
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Card(
                    color: backgroundcolor2,
                    margin: const EdgeInsets.only(
                        left: 40, right: 40, bottom: 20, top: 30),
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
                          padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                          child: Text(
                            "Add Information",
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
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              //========first
                              Flexible(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("School Name"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 10, 0),
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
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("Campus"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 10, 0),
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
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("City"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 30, 0),
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
                        //==========================Second row of input form
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              //========first
                              Flexible(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("Owners First Name"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 10, 0),
                                      child: TextField(
                                        showCursor: true,
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
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("Last Name"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 10, 0),
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
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("Phone"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 30, 0),
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
                        //==========================third row of input form
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              //========first
                              Flexible(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("CNIC N0"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 10, 0),
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
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("Email"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 10, 0),
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
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("Password"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 30, 0),
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
                              // ==================third row of input form end
                            ],
                          ),
                        ),
                        //==========================fourth row of input form
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              //========first
                              Flexible(
                                flex: 12,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 36),
                                      child: Text("School Address"),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          30, 0, 30, 0),
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

                              // ==================third row of input form end
                            ],
                          ),
                        ),
                        //=======================space
                        const SizedBox(
                          height: 20,
                        ),
                        //=======================Divider line
                        const Divider(
                          color: line,
                          height: 1,
                        ),
                        //=====================text heading
                        const Padding(
                          padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
                          child: Text(
                            "Upload Documents",
                            style: TextStyle(
                                color: textcolor1,
                                fontSize: textsize1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        //=======================Divider line
                        const Divider(
                          color: line,
                          height: 1,
                        ),
                        //===================fifth row for choose file option
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              //========first

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 36),
                                    child: Text("School logo"),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 130,
                                          padding: EdgeInsets.only(left: 15),
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
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
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "No File Chosen",
                                            style:
                                                TextStyle(fontSize: textsize3),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // ),
                              //========Second
                              const SizedBox(
                                width: 20,
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 36),
                                    child: Text("CNIC front"),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 130,
                                          padding: EdgeInsets.only(left: 15),
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
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
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "No File Chosen",
                                            style:
                                                TextStyle(fontSize: textsize3),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              //========third
                              const SizedBox(
                                width: 20,
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 36),
                                    child: Text("CNIC back"),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 130,
                                          padding: EdgeInsets.only(left: 15),
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
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
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "No File Chosen",
                                            style:
                                                TextStyle(fontSize: textsize3),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //===========================sixth row for button
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(350, 30, 0, 0),
                                child: Container(
                                  width: 80,
                                  height: 34,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
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
                                    const EdgeInsets.fromLTRB(160, 30, 0, 0),
                                child: Container(
                                  width: 80,
                                  height: 34,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
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
          //==========================first Card
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