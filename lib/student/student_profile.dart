import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import 'package:desktop_deshboard/student/student_constant.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
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
                        // CircleAvatar(
                        //   // radius: 40.0,
                        //   backgroundImage: AssetImage(
                        //     "images/logo.png",
                        //   ),
                        // ),
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
                        "STUDENT",
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
                  //==================================search bar
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            isDense: true,
                            suffixIcon: const Icon(
                              Icons.search_rounded,
                              size: 38,
                              color: Colors.black,
                            ),
                            hintText: 'Search Student by name',
                            hintStyle: const TextStyle(fontSize: 14),
                            contentPadding: const EdgeInsets.fromLTRB(
                                20.0, 15.0, 20.0, 15.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),

                      //===========Text line
                      const Padding(
                        padding: EdgeInsets.only(left: 40, top: 10),
                        child: Text(
                          "All student List",
                          style:
                              TextStyle(fontSize: textsize, color: textcolor1),
                        ),
                      ),
                    ],
                  ),
                  //============================new card
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Card(
                      color: backgroundcolor2,
                      margin: const EdgeInsets.only(
                          left: 30, right: 70, bottom: 10, top: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      //================================first heading
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                child: Text(
                                  "About Student ",
                                  style: TextStyle(
                                      color: textcolor1,
                                      fontSize: textsize1,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Spacer(),
                              //================first icon button
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.person_add,
                                          color: Colors.blue),
                                      onPressed: () {
                                        setState(() {
                                          print("ooo");
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              //================Second icon button
                              Padding(
                                padding: const EdgeInsets.only(right: 35),
                                child: Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          print("hoo gyia hai");
                                        });
                                      },
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),

                          //===========divider line
                          const Divider(
                            color: line,
                            height: 1,
                          ),
                          //=======================image of student display
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/check.png",
                                      width: 215,
                                      height: 250,
                                    ),
                                  ],
                                ),
                              ),

                              //=======data show of student
                              Padding(
                                padding: EdgeInsets.only(left: 40, top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //============first line

                                    Row(
                                      children: const [
                                        Text(
                                          "Name",
                                          style: TextStyle(fontSize: textsize5),
                                        ),
                                      ],
                                    ),

                                    //========second line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Gender",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //======third line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Date of Birth",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //========fourth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Email",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //=====fifth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Joining Date",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //=======sixth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Subject",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //======seventh line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Religion",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //=====eighth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Class",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //======ninth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Section",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //===========tenth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "ID",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //=====eleventh line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Address",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //=====twelfth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Phone Number",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //======= thirteenth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Phone Number",
                                            style:
                                                TextStyle(fontSize: textsize5),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //========== data next column
                              Padding(
                                padding: EdgeInsets.only(left: 50, top: 14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //============first line

                                    Row(
                                      children: const [
                                        Text(
                                          "syed tayyab zamir",
                                          style: TextStyle(fontSize: textsize),
                                        ),
                                      ],
                                    ),

                                    //========second line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "male",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //======third line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "20 apr 2022",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //========fourth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Tayyabshah010@gmail.com",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //=====fifth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "jan 2 2021",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //=======sixth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "computer",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //======seventh line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Islam",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //=====eighth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "css",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //======ninth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "A",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //===========tenth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "00034r@a",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //=====eleventh line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "chak 10 ml bhalwal ",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //=====twelfth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "+923044567321",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //======= thirteenth line
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "+923091234567",
                                            style:
                                                TextStyle(fontSize: textsize),
                                          ),
                                        ],
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