import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:desktop_deshboard/account/account_constant.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);
  static const String id = "payment-method";
  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  //===============================for payment method
  //==========class
  String? selectedClasss;
  List<String> classs = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  //==========section
  String? selectedSections;
  List<String> Sections = [
    'Im1',
    'Im2',
    'Im3',
    'Im4',
    'Im5',
    'Im6',
    'Im7',
    'Im8',
  ];
  //==========Total fee
  String? selectedTotalFee;
  List<String> TotalFee = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];
  //==========payment method
  String? selectedPaymentMethod;
  List<String> PaymentMethod = [
    'tem1',
    'tem2',
    'tem3',
    'tem4',
    'tem5',
    'tem6',
    'tem7',
    'tem8',
  ];
  //==========payment method
  String? selectedStatus;
  List<String> Status = [
    'm1',
    'm2',
    'm3',
    'm4',
    'm5',
    'm6',
    'm7',
    'm8',
  ];
  //==========Date
  String? selectedDate;
  List<String> Date = [
    'em1',
    'em2',
    'em3',
    'em4',
    'em5',
    'em6',
    'em7',
    'em8',
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundcolor4,
      child: Stack(
        // fit: StackFit.expand,
        children: [
          Container(
            //  color: backgroundcolor1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 50),
                  child: Column(
                    children: const [
                      AutoSizeText(
                        "Student fee",
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
              margin: const EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                //    fit: StackFit.expand,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      //===========Text line
                      Padding(
                        padding: EdgeInsets.only(left: 50, top: 30),
                        child: Text(
                          "Home > payment method",
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
                      elevation: 8,
                      color: backgroundcolor3,
                      margin: const EdgeInsets.only(
                          left: 40, right: 30, bottom: 300, top: 0),
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
                              "Home > payment method ",
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
                          //=====================first row of dropdown button
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 0),
                            //======== first row of input
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                //===========first
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 32),
                                        child: Text("Name"),
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
                                //======second
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("ID"),
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
                                //=======third
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 28),
                                        child: Text("Class"),
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
                                                    'Select Class',
                                                    style: TextStyle(
                                                      fontSize: textsize,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: classs
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
                                            value: selectedClasss,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedClasss =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 235,
                                            dropdownMaxHeight: 150,
                                            buttonPadding:
                                                const EdgeInsets.only(
                                                    left: 14, right: 14),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              border: Border.all(
                                                color: boder1,
                                              ),
                                              color: Colors.white,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 235,
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
                                        padding: EdgeInsets.only(left: 28),
                                        child: Text("section "),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 0, 10, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Section ',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: Sections.map((item) =>
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
                                            value: selectedSections,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedSections =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 280,
                                            dropdownMaxHeight: 150,
                                            buttonPadding:
                                                const EdgeInsets.only(
                                                    left: 14, right: 14),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              border: Border.all(
                                                color: boder1,
                                              ),
                                              color: Colors.white,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 225,
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
                          //=====================second row of dropdown button
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                //==========first
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Total fee "),
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
                                                    'Total Fee ',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: TotalFee.map((item) =>
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
                                            value: selectedTotalFee,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedTotalFee =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 235,
                                            dropdownMaxHeight: 150,
                                            buttonPadding:
                                                const EdgeInsets.only(
                                                    left: 14, right: 14),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              border: Border.all(
                                                color: boder1,
                                              ),
                                              color: Colors.white,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 235,
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
                                //============second
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Payment method "),
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
                                                    'Payment method ',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: PaymentMethod.map((item) =>
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
                                            value: selectedPaymentMethod,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedPaymentMethod =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 235,
                                            dropdownMaxHeight: 150,
                                            buttonPadding:
                                                const EdgeInsets.only(
                                                    left: 14, right: 14),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              border: Border.all(
                                                color: boder1,
                                              ),
                                              color: Colors.white,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 235,
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
                                //=============third
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Status "),
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
                                                    'Status  ',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: Status.map((item) =>
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
                                            value: selectedStatus,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedStatus =
                                                    value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 235,
                                            dropdownMaxHeight: 150,
                                            buttonPadding:
                                                const EdgeInsets.only(
                                                    left: 14, right: 14),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              border: Border.all(
                                                color: boder1,
                                              ),
                                              color: Colors.white,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 235,
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
                                //==============four
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Text("Date "),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            30, 0, 10, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Date  ',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: Date.map((item) =>
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
                                            value: selectedDate,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedDate = value as String;
                                              });
                                            },
                                            buttonHeight: 32,
                                            buttonWidth: 235,
                                            dropdownMaxHeight: 150,
                                            buttonPadding:
                                                const EdgeInsets.only(
                                                    left: 14, right: 14),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              border: Border.all(
                                                color: boder1,
                                              ),
                                              color: Colors.white,
                                            ),
                                            itemPadding: const EdgeInsets.only(
                                                left: 14, right: 14),
                                            dropdownWidth: 225,
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
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ======================button add
                  Padding(
                    padding: const EdgeInsets.only(top: 450),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(350, 10, 0, 0),
                          child: Container(
                            width: 150,
                            height: 40,
                            child: FlatButton(
                              color: buttoncolor,
                              onPressed: () {},
                              child: const Text(
                                "ADD",
                                style: TextStyle(
                                    color: textcolor, fontSize: textsize1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(150, 10, 0, 0),
                          child: Container(
                            width: 150,
                            height: 40,
                            child: FlatButton(
                              color: buttoncolor1,
                              onPressed: () {},
                              child: const Text(
                                "Reset",
                                style: TextStyle(
                                    color: textcolor1, fontSize: textsize1),
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
          )
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