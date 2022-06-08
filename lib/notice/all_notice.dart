import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:desktop_deshboard/notice/notice_constant.dart';

class AllNotice extends StatefulWidget {
  const AllNotice({Key? key}) : super(key: key);
  static const String id = "all-notice";
  @override
  State<AllNotice> createState() => _AllNoticeState();
}

class _AllNoticeState extends State<AllNotice> {
  //===============================for all_Notice Posted By
  //==========Notice Type
  String? selectedNoticeType;
  List<String> NoticeType = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  //========== Posted By
  String? selectedPostedBy;
  List<String> PostedBy = [
    'em1',
    'em2',
    'em3',
    'em4',
    'em5',
    'em6',
    'em7',
    'em8',
  ];
  //========== Date
  String? selectedDateBy;
  List<String> DateBy = [
    'm1',
    'm2',
    'm3',
    'm4',
    'm5',
    'm6',
    'm7',
    'm8',
  ];
  //========== iamge
  String? selectedImageBy;
  List<String> ImageBy = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundcolor4,
      child: Stack(
        //  fit: StackFit.expand,
        children: [
          Container(
            //  color: backgroundcolor1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 50),
                  child: Column(
                    children: const [
                      AutoSizeText(
                        "Notice Board",
                        style: TextStyle(
                            color: headingcolor1,
                            fontSize: headingsize2,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 50),
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
            padding: const EdgeInsets.only(
              top: 70,
            ),
            child: Card(
              margin: const EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                // fit: StackFit.expand,
                children: [
                  //===========first line
                  const Padding(
                    padding: EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "Home > Notice Board",
                      style: TextStyle(fontSize: textsize, color: textcolor1),
                    ),
                  ),

                  //=========================Row +2column

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //============ first inner card
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 20),
                              child: Container(
                                width: 268,
                                height: 530,
                                child: Card(
                                  color: backgroundcolor3,
                                  elevation: 6,

                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  //============================form start
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //====first line
                                      const Text(
                                        "  Create Notice",
                                        style: TextStyle(
                                          color: headingcolor1,
                                          fontSize: textsize6,
                                        ),
                                      ),

                                      //===========divider line
                                      const Divider(
                                        color: line,
                                        height: 2,
                                      ),
                                      //====form first input
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Notice Type",
                                          style: TextStyle(fontSize: textsize5),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Notice Type',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: NoticeType.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: textsize,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                )).toList(),
                                            value: selectedNoticeType,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedNoticeType =
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
                                                color: boder1,
                                              ),
                                              color: textcolor,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 220,
                                            dropdownMaxHeight: 150,
                                            dropdownDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              color: textcolor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      //========form secend input
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Title",
                                          style: TextStyle(fontSize: textsize5),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 4, 20, 0),
                                        child: TextField(
                                          showCursor: false,
                                          cursorColor: textcolor1,
                                          decoration: InputDecoration(
                                            fillColor: textcolor,
                                            filled: true,
                                            isDense: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 8),
                                            enabledBorder: myinputborder(),
                                            focusedBorder: myfocusborder(),
                                          ),
                                        ),
                                      ),
                                      //===========form third input
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Posted By",
                                          style: TextStyle(fontSize: textsize5),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            icon: const Icon(Icons.person),
                                            iconSize: 16,
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Posted By',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: PostedBy.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: textsize,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                )).toList(),
                                            value: selectedPostedBy,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedPostedBy =
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
                                                color: boder1,
                                              ),
                                              color: textcolor,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 220,
                                            dropdownMaxHeight: 150,
                                            dropdownDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              color: textcolor,
                                            ),
                                          ),
                                        ),
                                      ),

                                      //======form fourth input
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Date",
                                          style: TextStyle(fontSize: textsize5),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            icon: const Icon(Icons.person),
                                            iconSize: 16,
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Date',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: DateBy.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: textsize,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                )).toList(),
                                            value: selectedDateBy,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedDateBy =
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
                                                color: boder1,
                                              ),
                                              color: textcolor,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 220,
                                            dropdownMaxHeight: 150,
                                            dropdownDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              color: textcolor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      //=====================form fifth input
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Image",
                                          style: TextStyle(fontSize: textsize5),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            icon: const Icon(Icons
                                                .add_photo_alternate_rounded),
                                            iconSize: 16,
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Image',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: ImageBy.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: textsize,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                )).toList(),
                                            value: selectedImageBy,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedImageBy =
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
                                                color: boder1,
                                              ),
                                              color: textcolor,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 220,
                                            dropdownMaxHeight: 150,
                                            dropdownDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              color: textcolor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      //=====================form sixth input
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Details",
                                          style: TextStyle(fontSize: textsize5),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 4, 20, 0),
                                        child: TextField(
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 4,
                                          //  showCursor: false,
                                          cursorColor: textcolor1,
                                          decoration: InputDecoration(
                                            fillColor: textcolor,
                                            filled: true,
                                            isDense: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 8),
                                            enabledBorder: myinputborder(),
                                            focusedBorder: myfocusborder(),
                                          ),
                                        ),
                                      ),
                                      //=============================button
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 34,
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                            color: buttoncolor,
                                            onPressed: () {},
                                            child: const Text(
                                              "Submit",
                                              style: TextStyle(
                                                  color: textcolor,
                                                  fontSize: textsize1),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //========================second column show record
                        Expanded(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Notice Board",
                                        style: TextStyle(
                                            fontSize: textsize4,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      const Spacer(),

                                      //======================first button
                                      SizedBox(
                                        height: 34,
                                        width: 110,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              color: Colors.blue,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextButton(
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      OutlinedBorder>(
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0),
                                                ),
                                              )),
                                              backgroundColor:
                                                  MaterialStateProperty
                                                      .resolveWith<Color?>(
                                                (states) {
                                                  if (states.contains(
                                                      MaterialState.hovered)) {
                                                    return Colors.blue;
                                                  }
                                                  return Colors.white;
                                                },
                                              ),
                                              foregroundColor:
                                                  MaterialStateProperty
                                                      .resolveWith<Color?>(
                                                          (states) {
                                                if (states.contains(
                                                    MaterialState.hovered)) {
                                                  return Colors.white;
                                                }
                                                return Colors.black;
                                              }),
                                            ),
                                            onPressed: () {
                                              print("TextButton1");
                                            },
                                            child: const Text(
                                              'Search By Date',
                                              style: TextStyle(
                                                  fontSize: textsize3),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      //======Second button
                                      SizedBox(
                                        height: 34,
                                        width: 110,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              color: Colors.blue,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextButton(
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      OutlinedBorder>(
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0),
                                                ),
                                              )),
                                              backgroundColor:
                                                  MaterialStateProperty
                                                      .resolveWith<Color?>(
                                                (states) {
                                                  if (states.contains(
                                                      MaterialState.hovered)) {
                                                    return Colors.blue;
                                                  }
                                                  return Colors.white;
                                                },
                                              ),
                                              foregroundColor:
                                                  MaterialStateProperty
                                                      .resolveWith<Color?>(
                                                          (states) {
                                                if (states.contains(
                                                    MaterialState.hovered)) {
                                                  return Colors.white;
                                                }
                                                return Colors.black;
                                              }),
                                            ),
                                            onPressed: () {
                                              print("TextButton1");
                                            },
                                            child: const Text(
                                              'Search',
                                              style: TextStyle(
                                                  fontSize: textsize3),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  //=============divider line
                                  const Divider(
                                    color: line,
                                    height: 40,
                                    endIndent: 25,
                                    indent: 0,
                                  ),
                                  //==========row for text + 2button
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //===============================text
                                      const Text(
                                        "Barkhurdar",
                                        style: TextStyle(
                                            fontSize: textsize1,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      //===============================button1
                                      SizedBox(
                                        height: 34,
                                        width: 110,
                                        child: Card(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextButton(
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      OutlinedBorder>(
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0),
                                                ),
                                              )),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color(0xffF8ABA1)),
                                            ),
                                            onPressed: () {
                                              print("TextButton1");
                                            },
                                            child: const Text(
                                              'Remove',
                                              style: TextStyle(
                                                fontSize: textsize,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      //===============================button2

                                      SizedBox(
                                        height: 34,
                                        width: 110,
                                        child: Card(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextButton(
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      OutlinedBorder>(
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0),
                                                ),
                                              )),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color(0xffD6EEF0)),
                                            ),
                                            onPressed: () {
                                              print("TextButton1");
                                            },
                                            child: const Text(
                                              "Publish",
                                              style: TextStyle(
                                                fontSize: textsize,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  //============Column make 2 text field
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '16 may, 2022',
                                          style: TextStyle(fontSize: textsize5),
                                        ),
                                        Text(
                                          "10 min ago",
                                          style: TextStyle(fontSize: textsize5),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //================new row contain 2 column
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //==================first column for text
                                      Flexible(
                                        child: Column(
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 10, 20, 0),
                                              child: Text(
                                                  "ong and long andlong and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and tha"),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //================second column for image
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 35, 0),
                                            child: Container(
                                              width: 370,
                                              height: 245,
                                              child: Image.asset(
                                                "images/pic4.jpg",
                                                alignment: Alignment.bottomLeft,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  //====================divider line
                                  const Divider(
                                    color: line,
                                    height: 20,
                                    endIndent: 25,
                                    indent: 0,
                                  ),
                                  SizedBox(
                                    height: 190,
                                  )
                                ],
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
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
      //Outline border type for TextFeild
      borderSide: BorderSide(color: boder1),
    );
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: boder1),
    );
  }
}