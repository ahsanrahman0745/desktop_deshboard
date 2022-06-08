import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:desktop_deshboard/attendence/attendence_constant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TeacherAttendence extends StatefulWidget {
  const TeacherAttendence({Key? key}) : super(key: key);
  static const String id = "teacher-attendence";

  @override
  State<TeacherAttendence> createState() => _TeacherAttendenceState();
}

class _TeacherAttendenceState extends State<TeacherAttendence> {
  //===============================for teacher Attendence form
  //==========Select department
  String? selectedSelectdepartment;
  List<String> Selectdepartment = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  //=========select shift
  String? selectedselectshift;
  List<String> selectshift = [
    'Im1',
    'Im2',
    'Im3',
    'Im4',
    'Im5',
    'Im6',
    'Im7',
    'Im8',
  ];
  //===========select Teacher
  String? selectedSelectTeacher;
  List<String> SelectTeacher = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];
  //================Select Status
  String? selectedSelectStatus;
  List<String> SelectStatus = [
    '1sh',
    '2sh',
    '3sh',
    '4sh',
    '5sh',
    '6sh',
    '7sh',
    '8sh',
  ];
  //============second row of dropdown box.....
  String? selectedSelectdepartment1;
  List<String> Selectdepartment1 = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  //=========select shift
  String? selectedselectshift1;
  List<String> selectshift1 = [
    'Im1',
    'Im2',
    'Im3',
    'Im4',
    'Im5',
    'Im6',
    'Im7',
    'Im8',
  ];
  //===========select month
  String? selectedmonth;
  List<String> month = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];
  //================Session Year
  String? selectedSessionYear;
  List<String> SessionYear = [
    '1sh',
    '2sh',
    '3sh',
    '4sh',
    '5sh',
    '6sh',
    '7sh',
    '8sh',
  ];

  @override
  Widget build(BuildContext context) {
    final DataTableSource _data = MyDataT(context);
    return Material(
      //============================= form start.........
      child: Stack(
        //fit: StackFit.expand,
        children: [
          Container(
            //   color: backgroundcolor1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 50),
                  child: Column(
                    children: const [
                      AutoSizeText(
                        "Attendence",
                        style: TextStyle(
                            color: headingcolor1,
                            fontSize: headingsize3,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //=================================first card
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Card(
              elevation: 0,
              margin: const EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                //fit: StackFit.expand,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      //===========Text line
                      Padding(
                        padding: EdgeInsets.only(left: 50, top: 20),
                        child: Text(
                          "home > Teacher Attendence",
                          style:
                              TextStyle(fontSize: textsize, color: textcolor1),
                        ),
                      ),
                    ],
                  ),
                  //============================new card
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Card(
                      elevation: 6,
                      color: backgroundcolor3,
                      margin: const EdgeInsets.only(
                          left: 40, right: 40, bottom: 370, top: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),

                      //================================first heading
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Mark Teacher's Attendance",
                              style: TextStyle(
                                  color: textcolor2,
                                  fontSize: textsize4,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          //===========divider line
                          const Divider(
                            color: line,
                            height: 1,
                          ),
                          //=====================firs row of dropdown button
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                //======first
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Select department"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Select department',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: Selectdepartment.map(
                                                (item) =>
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
                                            value: selectedSelectdepartment,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedSelectdepartment =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 210,
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
                                            dropdownWidth: 210,
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
                                //======second
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Select Shift"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Select Shift',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: selectshift
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
                                            value: selectedselectshift,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedselectshift =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 210,
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
                                            dropdownWidth: 210,
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
                                //=======third
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Select Teacher"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Select Teacher',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: SelectTeacher.map((item) =>
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
                                            value: selectedSelectTeacher,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedSelectTeacher =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 210,
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
                                            dropdownWidth: 210,
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
                                //======fourth
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text("Select Status"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 4, 0, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Select Status  ',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: SelectStatus.map((item) =>
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
                                            value: selectedSelectStatus,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedSelectStatus =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 210,
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
                                            dropdownWidth: 210,
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
                                const SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

//===========================
//===========================second dropdown boxes
//===========================
                  Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: Card(
                      elevation: 6,
                      color: backgroundcolor3,
                      margin: const EdgeInsets.only(
                          left: 40, right: 40, bottom: 370, top: 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),

                      //================================first heading
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Checkout Teacher's Attendance",
                              style: TextStyle(
                                  color: textcolor2,
                                  fontSize: textsize4,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          //===========divider line
                          const Divider(
                            color: line,
                            height: 1,
                          ),
                          //=====================second row of dropdown button
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                //======first
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Select department"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Select department',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: Selectdepartment1.map(
                                                (item) =>
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
                                            value: selectedSelectdepartment1,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedSelectdepartment1 =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 210,
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
                                            dropdownWidth: 210,
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
                                //======second
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Select Shift"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Select Shift',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: selectshift1
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
                                            value: selectedselectshift1,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedselectshift1 =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 210,
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
                                            dropdownWidth: 210,
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
                                //=======third
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Select Month"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 4, 20, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Select Month',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: month
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
                                            value: selectedmonth,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedmonth = value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 210,
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
                                            dropdownWidth: 210,
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
                                //======fourth
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text("Session Year"),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 4, 0, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Session Year  ',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: SessionYear.map((item) =>
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
                                            value: selectedSessionYear,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedSessionYear =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 210,
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
                                            dropdownWidth: 210,
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
                                const SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //======================Attendance calender
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 400),
                    child: Flex(
                      direction: Axis.vertical,
                      children: [
                        PaginatedDataTable(
                          arrowHeadColor: Colors.black,
                          dataRowHeight: 40,
                          columnSpacing: 12,
                          horizontalMargin: 9,

                          //  showCheckboxColumn: false,
                          source: _data,
                          rowsPerPage: 22,
                          columns: const [
                            DataColumn(
                              label: Text('Student'),
                            ),
                            DataColumn(
                              label: Text("Info"),
                            ),
                            DataColumn(
                              label: Text('1'),
                            ),
                            DataColumn(
                              label: Text('2'),
                            ),
                            DataColumn(
                              label: Text('3'),
                            ),
                            DataColumn(
                              label: Text('4'),
                            ),
                            DataColumn(
                              label: Text('5'),
                            ),
                            DataColumn(
                              label: Text('6'),
                            ),
                            DataColumn(
                              label: Text('7'),
                            ),
                            DataColumn(
                              label: Text('8'),
                            ),
                            DataColumn(
                              label: Text('9'),
                            ),
                            DataColumn(
                              label: Text('10'),
                            ),
                            DataColumn(
                              label: Text('11'),
                            ),
                            DataColumn(
                              label: Text('12'),
                            ),
                            DataColumn(
                              label: Text('13'),
                            ),
                            DataColumn(
                              label: Text('14'),
                            ),
                            DataColumn(
                              label: Text('15'),
                            ),
                            DataColumn(
                              label: Text('16'),
                            ),
                            DataColumn(
                              label: Text('17'),
                            ),
                            DataColumn(
                              label: Text('18'),
                            ),
                            DataColumn(
                              label: Text('19'),
                            ),
                            DataColumn(
                              label: Text('20'),
                            ),
                            DataColumn(
                              label: Text('21'),
                            ),
                            DataColumn(
                              label: Text('22'),
                            ),
                            DataColumn(
                              label: Text('23'),
                            ),
                            DataColumn(
                              label: Text('24'),
                            ),
                            DataColumn(
                              label: Text('25'),
                            ),
                            DataColumn(
                              label: Text('26'),
                            ),
                            DataColumn(
                              label: Text('27'),
                            ),
                            DataColumn(
                              label: Text('28'),
                            ),
                            DataColumn(
                              label: Text('29'),
                            ),
                            DataColumn(
                              label: Text('30'),
                            ),
                            DataColumn(
                              label: Text('31'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// The "soruce" of the table
class MyDataT extends DataTableSource {
  // Generate some made-up data
  BuildContext? context;
  late final List<Map<String, dynamic>> _data22;

  final List<Map<String, dynamic>> data = List.generate(
      200,
      (index) => {
            "Student": "Syed tayyab ",
            "Info": "Basic Alert",
            "1": "s",
            "2": "s",
            "3": "s",
            "4": "s",
            "5": "s",
            "6": "s",
            "7": "s",
            "8": "s",
            "9": "s",
            "10": "s",
            "11": "s",
            "12": "s",
            "13": "s",
            "14": "s",
            "15": "s",
            "16": "s",
            "17": "s",
            "18": "s",
            "19": "s",
            "20": "s",
            "21": "s",
            "22": "s",
            "23": "s",
            "24": "s",
            "25": "s",
            "26": "s",
            "27": "s",
            "28": "s",
            "29": "s",
            "30": "s",
            "31": "s",
          });

  MyDataT(BuildContext context) {
    this.context = context;
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      const DataCell(Text('Syed tayab zamir')),
      DataCell(
        TextButton(
          child: const Text('Alert with Style'),
          onPressed: () => _onAlertWithStylePressed(context),
        ),
        //==========================================
      ),
      const DataCell(Icon(Icons.check)),
      const DataCell(Text("3")),
      const DataCell(Text("2")),
      const DataCell(Text("4")),
      const DataCell(Text("5")),
      const DataCell(Text("6")),
      const DataCell(Text("7")),
      const DataCell(Text("8")),
      const DataCell(Text("9")),
      const DataCell(Text("10")),
      const DataCell(Text("11")),
      const DataCell(Text("12")),
      const DataCell(Text("13")),
      const DataCell(Text("14")),
      const DataCell(Text("15")),
      const DataCell(Text("16")),
      const DataCell(Text("17")),
      const DataCell(Text("18")),
      const DataCell(Text("19")),
      const DataCell(Text("20")),
      const DataCell(Text("21")),
      const DataCell(Text("22")),
      const DataCell(Text("23")),
      const DataCell(Text("24")),
      const DataCell(Text("25")),
      const DataCell(Text("26")),
      const DataCell(Text("27")),
      const DataCell(Text("28")),
      const DataCell(Text("29")),
      const DataCell(Text("30")),
      const DataCell(Text("31")),
    ]);
  }

//================================================
// Advanced using of alerts
  _onAlertWithStylePressed(context) {
    // Reusable alert style
    var alertStyle = AlertStyle(
        animationType: AnimationType.fromTop,
        isCloseButton: false,
        isOverlayTapDismiss: false,
        descStyle: const TextStyle(fontWeight: FontWeight.bold),
        animationDuration: const Duration(milliseconds: 400),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: const BorderSide(
              //   color: Colors.grey,
              ),
        ),
        titleStyle: const TextStyle(
          color: Colors.red,
        ),
        constraints: const BoxConstraints.expand(width: 300),
        //First to chars "55" represents transparency of color
        overlayColor: const Color(0x55000000),
        alertElevation: 0,
        alertAlignment: Alignment.topCenter);

    // Alert dialog using custom alert style
    Alert(
      content: Column(
        children: [
          const Text(
            'Detail',
            style: TextStyle(color: textcolor3, fontSize: headingsize4),
          ),
          const Divider(
            height: 4,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                //=======first
                Column(
                  children: const [
                    Icon(Icons.directions_transit),
                    Text(
                      'Present',
                      style: TextStyle(color: textcolor4, fontSize: textsize6),
                    ),
                    Text(
                      "02",
                      style: TextStyle(color: textcolor4, fontSize: textsize6),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                //==============second
                Column(
                  children: const [
                    Icon(Icons.directions_transit),
                    Text(
                      'Leave',
                      style: TextStyle(color: textcolor2, fontSize: textsize6),
                    ),
                    Text(
                      "02",
                      style: TextStyle(color: textcolor2, fontSize: textsize6),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                //===============third
                Column(
                  children: const [
                    Icon(Icons.directions_transit),
                    Text(
                      'Absent',
                      style: TextStyle(color: textcolor5, fontSize: textsize6),
                    ),
                    Text(
                      "02",
                      style: TextStyle(color: textcolor5, fontSize: textsize6),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      context: context,
      style: alertStyle,
      buttons: [
        DialogButton(
          child: const Text(
            "Ok",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          highlightColor: Colors.yellow,
          splashColor: Colors.yellow,
          color: Colors.yellow,
          radius: BorderRadius.circular(0.0),
        ),
      ],
    ).show();
  }
}