import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:desktop_deshboard/notice/notice_constant.dart';

class Approve extends StatefulWidget {
  const Approve({Key? key}) : super(key: key);
  static const String id = "approve";

  @override
  State<Approve> createState() => _ApproveState();
}

class _ApproveState extends State<Approve> {
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
                      "Home > Approve",
                      style: TextStyle(fontSize: textsize, color: textcolor1),
                    ),
                  ),

                  //=========================Row +2column

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //========================second column show record
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 40, top: 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        borderRadius: BorderRadius.circular(10),
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
                                          backgroundColor: MaterialStateProperty
                                              .resolveWith<Color?>(
                                            (states) {
                                              if (states.contains(
                                                  MaterialState.hovered)) {
                                                return Colors.blue;
                                              }
                                              return Colors.white;
                                            },
                                          ),
                                          foregroundColor: MaterialStateProperty
                                              .resolveWith<Color?>((states) {
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
                                          style: TextStyle(fontSize: textsize3),
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
                                        borderRadius: BorderRadius.circular(10),
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
                                          backgroundColor: MaterialStateProperty
                                              .resolveWith<Color?>(
                                            (states) {
                                              if (states.contains(
                                                  MaterialState.hovered)) {
                                                return Colors.blue;
                                              }
                                              return Colors.white;
                                            },
                                          ),
                                          foregroundColor: MaterialStateProperty
                                              .resolveWith<Color?>((states) {
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
                                          style: TextStyle(fontSize: textsize3),
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
                                height: 20,
                                endIndent: 25,
                                indent: 0,
                              ),
                              //==========row for text + 2button
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              ),
                              //============Column make 2 text field
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //==================first column for text
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              20, 10, 20, 0),
                                          child: Text(
                                              "This text is so long and long and long and long and long and that's why it is not wrapping to next line.long and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and tha"),
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
                                          child: Image.asset("images/pic4.jpg"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //====================divider line
                              const Divider(
                                color: line,
                                height: 0,
                                endIndent: 25,
                                indent: 0,
                              ),
                              //==========================
                              //==========================repate data
                              //==========================
                              //==========row for text + 2button
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              ),
                              //============Column make 2 text field
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //==================first column for text
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              20, 10, 20, 0),
                                          child: Text(
                                              "This text is so long and long and long and long and long and that's why it is not wrapping to next line.long and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and thalong and long and long and long and tha"),
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
                                          child: Image.asset("images/pic4.jpg"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //====================divider line
                              const Divider(
                                color: line,
                                height: 0,
                                endIndent: 25,
                                indent: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}