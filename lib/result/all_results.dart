import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:desktop_deshboard/result/results_constant.dart';
import 'package:responsive_table/responsive_table.dart';

class AllResults extends StatefulWidget {
  const AllResults({Key? key}) : super(key: key);
  static const String id = "all-results";
  @override
  State<AllResults> createState() => _AllResultsState();
}

class _AllResultsState extends State<AllResults> {
  //===============================for all_results
  //==========select class
  String? selectedResultClass;
  List<String> resultClass = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  //==========================
  late List<DatatableHeader> _headers;

  List<int> _perPages = [10, 20, 50, 100];
  int _total = 100;
  int? _currentPerPage = 10;
  List<bool>? _expanded;
  String? _searchKey = "id";

  int _currentPage = 1;
  bool _isSearch = false;
  List<Map<String, dynamic>> _sourceOriginal = [];
  List<Map<String, dynamic>> _sourceFiltered = [];
  List<Map<String, dynamic>> _source = [];
  List<Map<String, dynamic>> _selecteds = [];
  // ignore: unused_field
  String _selectableKey = "id";

  String? _sortColumn;
  bool _sortAscending = true;
  bool _isLoading = true;
  bool _showSelect = true;
  var random = new Random();

  List<Map<String, dynamic>> _generateData({int n: 100}) {
    final List source = List.filled(n, Random.secure());
    List<Map<String, dynamic>> temps = [];
    var i = 1;
    print(i);
    // ignore: unused_local_variable
    for (var data in source) {
      temps.add({
        "id": i,
        "sku": "$i\000$i",
        "name": "Product $i",
        "category": "Category-$i",
        "price": i * 10.00,
        "cost": "20.00",
        "margin": "${i}0.20",
        "in_stock": "${i}0",
      });
      i++;
    }
    return temps;
  }

  _initializeData() async {
    _mockPullData();
  }

  _mockPullData() async {
    _expanded = List.generate(_currentPerPage!, (index) => false);

    setState(() => _isLoading = true);
    Future.delayed(const Duration(seconds: 3)).then((value) {
      _sourceOriginal.clear();
      _sourceOriginal.addAll(_generateData(n: random.nextInt(10000)));
      _sourceFiltered = _sourceOriginal;
      _total = _sourceFiltered.length;
      _source = _sourceFiltered.getRange(0, _currentPerPage!).toList();
      setState(() => _isLoading = false);
    });
  }

  _resetData({start: 0}) async {
    setState(() => _isLoading = true);
    var _expandedLen =
        _total - start < _currentPerPage! ? _total - start : _currentPerPage;
    Future.delayed(const Duration(seconds: 0)).then((value) {
      _expanded = List.generate(_expandedLen as int, (index) => false);
      _source.clear();
      _source = _sourceFiltered.getRange(start, start + _expandedLen).toList();
      setState(() => _isLoading = false);
    });
  }

  _filterData(value) {
    setState(() => _isLoading = true);

    try {
      if (value == "" || value == null) {
        _sourceFiltered = _sourceOriginal;
      } else {
        _sourceFiltered = _sourceOriginal
            .where((data) => data[_searchKey!]
                .toString()
                .toLowerCase()
                .contains(value.toString().toLowerCase()))
            .toList();
      }

      _total = _sourceFiltered.length;
      var _rangeTop = _total < _currentPerPage! ? _total : _currentPerPage!;
      _expanded = List.generate(_rangeTop, (index) => false);
      _source = _sourceFiltered.getRange(0, _rangeTop).toList();
    } catch (e) {
      print(e);
    }
    setState(() => _isLoading = false);
  }

  @override
  void initState() {
    super.initState();

    /// set headers
    _headers = [
      DatatableHeader(
          text: "ID",
          value: "id",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Name",
          value: "name",
          show: true,
          //flex: 2,
          sortable: true,
          editable: false,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "SKU",
          value: "sku",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Category",
          value: "category",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Price",
          value: "price",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Margin",
          value: "margin",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "In Stock",
          value: "in_stock",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
    ];

    _initializeData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  //=========================
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
                        "Results",
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
            padding: const EdgeInsets.only(top: 70),
            child: Card(
              margin: const EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                //   fit: StackFit.expand,
                children: [
                  //===========first line
                  const Padding(
                    padding: EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "home > result",
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
                                width: 273,
                                height: 400,
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
                                        "  Add result",
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
                                          "Exam Name",
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
                                      //========form secend input
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Student Name",
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
                                          "Selcet Class",
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
                                                    'Select class',
                                                    style: TextStyle(
                                                      fontSize: textsize5,
                                                      color: textcolor1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: resultClass
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
                                            value: selectedResultClass,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedResultClass =
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
                                          "Total Marks",
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
                                      //=====================form fifth input
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Obtained Marks",
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
                            //=========================second inner card
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 20, bottom: 30),
                              child: Container(
                                width: 286,
                                height: 124,
                                child: Card(
                                  color: backgroundcolor3,
                                  elevation: 6,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //=========first line
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 5, 0, 0),
                                        child: Text(
                                          "Add Result File",
                                          style: TextStyle(
                                            color: textcolor2,
                                            fontSize: textsize1,
                                          ),
                                        ),
                                      ),
                                      //===========divider line
                                      const Divider(
                                        color: line,
                                        height: 1,
                                      ),
                                      //================text line
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(16, 5, 0, 0),
                                        child: Text(
                                          "Excel File Add Here:",
                                          style: TextStyle(
                                            color: textcolor1,
                                            fontSize: textsize1,
                                          ),
                                        ),
                                      ),
                                      //=====================button
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 80,
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: FlatButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0)),
                                                color: buttoncolor,
                                                onPressed: () {},
                                                child: const Text(
                                                  "Add File",
                                                  style: TextStyle(
                                                      color: textcolor,
                                                      fontSize: textsize2),
                                                ),
                                              ),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                "No File Chosen",
                                                style: TextStyle(
                                                    fontSize: textsize3),
                                              ),
                                            ),
                                          ],
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
                        //
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                //==============add button
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Result List",
                                          style: TextStyle(fontSize: textsize4),
                                        ),
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
                                              'Roll Type Here',
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
                                              'Type Section',
                                              style: TextStyle(
                                                  fontSize: textsize3),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      //=====third button
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
                                              'Search ',
                                              style: TextStyle(
                                                  fontSize: textsize3),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //==============show record
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  padding: const EdgeInsets.all(0),
                                  constraints: const BoxConstraints(),
                                  child: Card(
                                    margin: EdgeInsets.all(0),
                                    child: ResponsiveDatatable(
                                      headers: _headers,
                                      source: _source,
                                      selecteds: _selecteds,
                                      showSelect: _showSelect,
                                      //autoHeight: true,
                                      dropContainer: (data) {
                                        if (int.tryParse(data['id'].toString())!
                                            .isEven) {
                                          return const Text("is Even");
                                        }
                                        return _DropDownContainer(data: data);
                                      },
                                      onChangedRow: (value, header) {
                                        /// print(value);
                                        /// print(header);
                                      },
                                      onSubmittedRow: (value, header) {
                                        /// print(value);
                                        /// print(header);
                                      },
                                      onTabRow: (data) {
                                        print(data);
                                      },
                                      onSort: (value) {
                                        setState(() => _isLoading = true);

                                        setState(() {
                                          _sortColumn = value;
                                          _sortAscending = !_sortAscending;
                                          if (_sortAscending) {
                                            _sourceFiltered.sort((a, b) =>
                                                b["$_sortColumn"].compareTo(
                                                    a["$_sortColumn"]));
                                          } else {
                                            _sourceFiltered.sort((a, b) =>
                                                a["$_sortColumn"].compareTo(
                                                    b["$_sortColumn"]));
                                          }
                                          var _rangeTop = _currentPerPage! <
                                                  _sourceFiltered.length
                                              ? _currentPerPage!
                                              : _sourceFiltered.length;
                                          _source = _sourceFiltered
                                              .getRange(0, _rangeTop)
                                              .toList();
                                          _searchKey = value;

                                          _isLoading = false;
                                        });
                                      },
                                      expanded: _expanded,
                                      sortAscending: _sortAscending,
                                      sortColumn: _sortColumn,
                                      isLoading: _isLoading,
                                      onSelect: (value, item) {
                                        print("$value  $item ");
                                        if (value!) {
                                          setState(() => _selecteds.add(item));
                                        } else {
                                          setState(() => _selecteds.removeAt(
                                              _selecteds.indexOf(item)));
                                        }
                                      },
                                      onSelectAll: (value) {
                                        if (value!) {
                                          setState(() => _selecteds = _source
                                              .map((entry) => entry)
                                              .toList()
                                              .cast());
                                        } else {
                                          setState(() => _selecteds.clear());
                                        }
                                      },
                                      footers: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: const Text("Rows per page:"),
                                        ),
                                        if (_perPages.isNotEmpty)
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: DropdownButton<int>(
                                              value: _currentPerPage,
                                              items: _perPages
                                                  .map((e) =>
                                                      DropdownMenuItem<int>(
                                                        child: Text("$e"),
                                                        value: e,
                                                      ))
                                                  .toList(),
                                              onChanged: (dynamic value) {
                                                setState(() {
                                                  _currentPerPage = value;
                                                  _currentPage = 1;
                                                  _resetData();
                                                });
                                              },
                                              isExpanded: false,
                                            ),
                                          ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Text(
                                              "$_currentPage - $_currentPerPage of $_total"),
                                        ),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.arrow_back_ios,
                                            size: 16,
                                          ),
                                          onPressed: _currentPage == 1
                                              ? null
                                              : () {
                                                  var _nextSet = _currentPage -
                                                      _currentPerPage!;
                                                  setState(() {
                                                    _currentPage = _nextSet > 1
                                                        ? _nextSet
                                                        : 1;
                                                    _resetData(
                                                        start:
                                                            _currentPage - 1);
                                                  });
                                                },
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                        ),
                                        IconButton(
                                          icon: const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 16),
                                          onPressed: _currentPage +
                                                      _currentPerPage! -
                                                      1 >
                                                  _total
                                              ? null
                                              : () {
                                                  var _nextSet = _currentPage +
                                                      _currentPerPage!;

                                                  setState(() {
                                                    _currentPage = _nextSet <
                                                            _total
                                                        ? _nextSet
                                                        : _total -
                                                            _currentPerPage!;
                                                    _resetData(
                                                        start: _nextSet - 1);
                                                  });
                                                },
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                        )
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

class _DropDownContainer extends StatelessWidget {
  final Map<String, dynamic> data;
  const _DropDownContainer({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = data.entries.map<Widget>((entry) {
      Widget w = Row(
        children: [
          Text(entry.key.toString()),
          const Spacer(),
          Text(entry.value.toString()),
        ],
      );
      return w;
    }).toList();

    return Container(
      /// height: 100,
      child: Column(
        /// children: [
        ///   Expanded(
        ///       child: Container(
        ///     color: Colors.red,
        ///     height: 50,
        ///   )),

        /// ],
        children: _children,
      ),
    );
  }
}