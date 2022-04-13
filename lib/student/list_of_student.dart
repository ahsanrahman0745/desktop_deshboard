import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:responsive_table/responsive_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:desktop_deshboard/student/student_constant.dart';

class ListOfStudent extends StatefulWidget {
  const ListOfStudent({Key? key}) : super(key: key);

  @override
  _ListOfStudentState createState() => _ListOfStudentState();
}

class _ListOfStudentState extends State<ListOfStudent> {
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
        "alert": "5",
        "received": [i + 20, 150],
        "test2": "asa $i",
        "test23": "ahsan a ahsan ahsan ahsan $i"
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
      DatatableHeader(
          text: "Alert",
          value: "alert",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
        text: "Received",
        value: "received",
        textAlign: TextAlign.center,
        show: true,
        sortable: false,
        sourceBuilder: (value, row) {
          List list = List.from(value);
          return Container(
            child: Column(
              children: [
                Container(
                  width: 85,
                  child: LinearProgressIndicator(
                    value: list.first / list.last,
                  ),
                ),
                Text("${list.first} of ${list.last}")
              ],
            ),
          );
        },
      ),
      DatatableHeader(
          text: "Text2",
          value: "test2",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Text23",
          value: "test23",
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
      //==========================================start form here........
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
          //==========================maint card start
          Padding(
            padding: EdgeInsets.only(top: 90),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    constraints: const BoxConstraints(),
                    child: Card(
                      margin: EdgeInsets.all(0),
                      child: ResponsiveDatatable(
                        title: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
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
                                        if (states
                                            .contains(MaterialState.hovered)) {
                                          return Colors.blue;
                                        }
                                        return Colors.white;
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty
                                        .resolveWith<Color?>((states) {
                                      if (states
                                          .contains(MaterialState.hovered)) {
                                        return Colors.white;
                                      }
                                      return Colors.black;
                                    }),
                                  ),
                                  onPressed: () {
                                    print("TextButton1");
                                  },
                                  child: const Text('Roll type here'),
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
                              // height: 34,
                              // width: 102,
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
                                        if (states
                                            .contains(MaterialState.hovered)) {
                                          return Colors.blue;
                                        }
                                        return Colors.white;
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty
                                        .resolveWith<Color?>((states) {
                                      if (states
                                          .contains(MaterialState.hovered)) {
                                        return Colors.white;
                                      }
                                      return Colors.black;
                                    }),
                                  ),
                                  onPressed: () {
                                    print("TextButton1");
                                  },
                                  child: const Text('Type section'),
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
                              // height: 34,
                              // width: 70,
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
                                        if (states
                                            .contains(MaterialState.hovered)) {
                                          return Colors.blue;
                                        }
                                        return Colors.white;
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty
                                        .resolveWith<Color?>((states) {
                                      if (states
                                          .contains(MaterialState.hovered)) {
                                        return Colors.white;
                                      }
                                      return Colors.black;
                                    }),
                                  ),
                                  onPressed: () {
                                    print("TextButton");
                                  },
                                  child: const Text('search'),
                                ),
                              ),
                            ),

                            const SizedBox(
                              width: 400,
                            ),
                          ],
                        ),

                        //=============================================
                        // title: TextButton.icon(
                        //   onPressed: () => {},
                        //   icon: Icon(Icons.add),
                        //   label: Text("new item"),
                        // ),
                        reponseScreenSizes: [ScreenSize.xs],
                        actions: [
                          //   if (_isSearch)
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                isDense: true,
                                // isCollapsed: true,
                                // suffixIcon: const Icon(
                                //   Icons.search_rounded,
                                //   size: 38,
                                //   color: Colors.black,
                                // ),
                                //  hintText: 'Search Student by name',
                                hintStyle: const TextStyle(fontSize: 14),
                                contentPadding: const EdgeInsets.fromLTRB(
                                    20.0, 15.0, 20.0, 15.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Search Student by name ' +
                                    _searchKey!
                                        .replaceAll(new RegExp('[\\W_]+'), ' ')
                                        .toUpperCase(),
                                // prefixIcon: IconButton(
                                //     icon: Icon(Icons.cancel),
                                //     onPressed: () {
                                //       setState(() {
                                //         _isSearch = false;
                                //       });
                                //       _initializeData();
                                //     }),
                                suffixIcon: IconButton(
                                    color: Colors.black,
                                    // iconSize: 38,
                                    icon: const Icon(Icons.search),
                                    onPressed: () {}),
                              ),
                              // onSubmitted: (value) {
                              //   _filterData(value);
                              // },
                            ),
                          ),

                          // if (!_isSearch)
                          //   IconButton(
                          //       icon: Icon(Icons.search),
                          //       onPressed: () {
                          //         setState(() {
                          //           _isSearch = true;
                          //         });
                          //       })
                        ],
                        headers: _headers,
                        source: _source,
                        selecteds: _selecteds,
                        showSelect: _showSelect,
                        //autoHeight: true,
                        dropContainer: (data) {
                          if (int.tryParse(data['id'].toString())!.isEven) {
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
                              _sourceFiltered.sort((a, b) => b["$_sortColumn"]
                                  .compareTo(a["$_sortColumn"]));
                            } else {
                              _sourceFiltered.sort((a, b) => a["$_sortColumn"]
                                  .compareTo(b["$_sortColumn"]));
                            }
                            var _rangeTop =
                                _currentPerPage! < _sourceFiltered.length
                                    ? _currentPerPage!
                                    : _sourceFiltered.length;
                            _source =
                                _sourceFiltered.getRange(0, _rangeTop).toList();
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
                            setState(() =>
                                _selecteds.removeAt(_selecteds.indexOf(item)));
                          }
                        },
                        onSelectAll: (value) {
                          if (value!) {
                            setState(() => _selecteds =
                                _source.map((entry) => entry).toList().cast());
                          } else {
                            setState(() => _selecteds.clear());
                          }
                        },
                        footers: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: const Text("Rows per page:"),
                          ),
                          if (_perPages.isNotEmpty)
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: DropdownButton<int>(
                                value: _currentPerPage,
                                items: _perPages
                                    .map((e) => DropdownMenuItem<int>(
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
                            padding: const EdgeInsets.symmetric(horizontal: 15),
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
                                    var _nextSet =
                                        _currentPage - _currentPerPage!;
                                    setState(() {
                                      _currentPage =
                                          _nextSet > 1 ? _nextSet : 1;
                                      _resetData(start: _currentPage - 1);
                                    });
                                  },
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                          ),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward_ios, size: 16),
                            onPressed:
                                _currentPage + _currentPerPage! - 1 > _total
                                    ? null
                                    : () {
                                        var _nextSet =
                                            _currentPage + _currentPerPage!;

                                        setState(() {
                                          _currentPage = _nextSet < _total
                                              ? _nextSet
                                              : _total - _currentPerPage!;
                                          _resetData(start: _nextSet - 1);
                                        });
                                      },
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: _initializeData,
          //   child: Icon(Icons.refresh_sharp),
          // ),
        ],
      ),
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