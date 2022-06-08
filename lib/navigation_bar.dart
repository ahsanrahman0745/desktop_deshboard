import 'package:desktop_deshboard/account/fee%20_collection.dart';
import 'package:desktop_deshboard/class/add_class.dart';
import 'package:desktop_deshboard/class_routine/student_routine.dart';
import 'package:desktop_deshboard/class_routine/teacher_routine.dart';
import 'package:desktop_deshboard/notice/all_notice.dart';
import 'package:desktop_deshboard/notice/approve.dart';
import 'package:desktop_deshboard/promote_class/promote_class.dart';
import 'package:desktop_deshboard/result/all_results.dart';
import 'package:desktop_deshboard/student/add_student_form.dart';
import 'package:desktop_deshboard/student/list_of_student.dart';
import 'package:desktop_deshboard/student/student_profile.dart';
import 'package:desktop_deshboard/teacher/add%20_teacher_form.dart';
import 'package:desktop_deshboard/teacher/list_of_teacher.dart';
import 'package:desktop_deshboard/teacher/teacher_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:desktop_deshboard/navigation_style.dart';

import 'account/all_expenses.dart';
import 'account/payment_method.dart';
import 'attendence/student_attendence.dart';
import 'attendence/teacher_attendence.dart';

class NavigationSide extends StatefulWidget {
  const NavigationSide({Key? key}) : super(key: key);
  static const String id = "navigation-bar";
  @override
  State<NavigationSide> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationSide> {
  Widget SelectedScreen = const ListOfTeacher();
  currentScreen(item) {
    switch (item.route) {
      case ListOfTeacher.id:
        setState(() {
          SelectedScreen = const ListOfTeacher();
        });
        break;
      case TeacherProfile.id:
        setState(() {
          SelectedScreen = const TeacherProfile();
        });
        break;
      case AddTeacherForm.id:
        setState(() {
          SelectedScreen = const AddTeacherForm();
        });
        break;
      case ListOfStudent.id:
        setState(() {
          SelectedScreen = const ListOfStudent();
        });
        break;
      case StudentProfile.id:
        setState(() {
          SelectedScreen = const StudentProfile();
        });
        break;
      case AddStudentForm.id:
        setState(() {
          SelectedScreen = const AddStudentForm();
        });

        break;
      case AllResults.id:
        setState(() {
          SelectedScreen = const AllResults();
        });

        break;
      case FeeCollection.id:
        setState(() {
          SelectedScreen = const FeeCollection();
        });

        break;
      case PaymentMethod.id:
        setState(() {
          SelectedScreen = const PaymentMethod();
        });

        break;
      case AllExpenses.id:
        setState(() {
          SelectedScreen = const AllExpenses();
        });

        break;
      case AddClass.id:
        setState(() {
          SelectedScreen = const AddClass();
        });
        break;
      //===== subject
      // case AddClass.id:
      //   setState(() {
      //     SelectedScreen = const AddClass();
      //   });
      //   break;
      //===========

      case StudentRoutine.id:
        setState(() {
          SelectedScreen = const StudentRoutine();
        });
        break;
      case TeacherRoutine.id:
        setState(() {
          SelectedScreen = const TeacherRoutine();
        });
        //=====attendance
        break;
      case StudentAttendence.id:
        setState(() {
          SelectedScreen = const StudentAttendence();
        });
        break;
      case TeacherAttendence.id:
        setState(() {
          SelectedScreen = const TeacherAttendence();
        });
        // break;

        //=====exam
        // case AddClass.id:
        //   setState(() {
        //     SelectedScreen = const AddClass();
        //   });
        //   break;
        //===========
        break;
      case PromoteClass.id:
        setState(() {
          SelectedScreen = const PromoteClass();
        });
        break;
      case AllNotice.id:
        setState(() {
          SelectedScreen = const AllNotice();
        });
        break;
      case Approve.id:
        setState(() {
          SelectedScreen = const Approve();
        });
    }
  }

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
          AdminMenuItem(
            title: 'Teacher',
            children: [
              AdminMenuItem(
                title: 'All Taecher',
                icon: Icons.person_add_alt_1_outlined,
                route: ListOfTeacher.id,
              ),
              AdminMenuItem(
                title: "Teacher Deatail",
                icon: Icons.person_add_alt_1_outlined,
                route: TeacherProfile.id,
              ),
              AdminMenuItem(
                title: 'Add Teacher',
                icon: Icons.person_add_alt_1_outlined,
                route: AddTeacherForm.id,
              ),
            ],
          ),
          //====student..........
          AdminMenuItem(
            title: 'Student',
            children: [
              AdminMenuItem(
                title: 'All Student',
                icon: Icons.person_add_alt_1_outlined,
                route: ListOfStudent.id,
              ),
              AdminMenuItem(
                title: 'Student Details',
                icon: Icons.person_add_alt_1_outlined,
                route: StudentProfile.id,
              ),
              AdminMenuItem(
                title: 'Admit Form',
                icon: Icons.person_add_alt_1_outlined,
                route: AddStudentForm.id,
              ),
            ],
          ),
          //====Result..........
          AdminMenuItem(
            title: 'Result',
            children: [
              AdminMenuItem(
                title: 'All Result',
                icon: Icons.person_add_alt_1_outlined,
                route: AllResults.id,
              ),
            ],
          ),
          //====Account..........
          AdminMenuItem(
            title: 'Account',
            children: [
              AdminMenuItem(
                title: 'Fee Collection',
                icon: Icons.person_add_alt_1_outlined,
                route: FeeCollection.id,
              ),
              AdminMenuItem(
                title: 'Payment Method',
                icon: Icons.person_add_alt_1_outlined,
                route: PaymentMethod.id,
              ),
              AdminMenuItem(
                title: 'All Experse',
                icon: Icons.person_add_alt_1_outlined,
                route: AllExpenses.id,
              ),
            ],
          ),
          //====Class................
          AdminMenuItem(
            title: 'Class',
            children: [
              AdminMenuItem(
                title: 'Add Class',
                icon: Icons.person_add_alt_1_outlined,
                route: AddClass.id,
              ),
            ],
          ),
          //====Subjects................
          AdminMenuItem(
            title: 'Subject',
            // children: [
            //   AdminMenuItem(
            //     title: 'Add Class',
            //     icon: Icons.person_add_alt_1_outlined,
            //     route: AddClass.id,
            //   ),
            //],
          ),
          //====Class Routine..........
          AdminMenuItem(
            title: 'Class Routine',
            children: [
              AdminMenuItem(
                title: 'Student Routine',
                icon: Icons.person_add_alt_1_outlined,
                route: StudentRoutine.id,
              ),
              AdminMenuItem(
                title: 'Teacher Routine',
                icon: Icons.person_add_alt_1_outlined,
                route: TeacherRoutine.id,
              ),
            ],
          ),
          //====Attendance..........
          AdminMenuItem(
            title: 'Attendance',
            children: [
              AdminMenuItem(
                title: 'Student Attendance',
                icon: Icons.person_add_alt_1_outlined,
                route: StudentAttendence.id,
              ),
              AdminMenuItem(
                title: 'Teacher Attendance',
                icon: Icons.person_add_alt_1_outlined,
                route: TeacherAttendence.id,
              ),
            ],
          ),
          //====Exams..........
          AdminMenuItem(
            title: 'Exams',
            // children: [
            //   AdminMenuItem(
            //     title: 'Student Attendance',
            //     icon: Icons.person_add_alt_1_outlined,
            //     // route: StudentRoutine.id,
            //   ),
            //   AdminMenuItem(
            //     title: 'Teacher Attendance',
            //     icon: Icons.person_add_alt_1_outlined,
            //     //route: TeacherRoutine.id,
            //   ),
            // ],
          ),
          //====promote class..........
          AdminMenuItem(
            title: 'Promote Class',
            icon: Icons.person_add_alt_1_outlined,
            route: PromoteClass.id,
          ),
          //====notice..........
          AdminMenuItem(
            title: 'Notice',
            children: [
              AdminMenuItem(
                title: 'All Notice',
                icon: Icons.person_add_alt_1_outlined,
                route: AllNotice.id,
              ),
              AdminMenuItem(
                title: 'Approve',
                icon: Icons.person_add_alt_1_outlined,
                route: Approve.id,
              ),
            ],
          ),
        ],
        selectedRoute: NavigationSide.id,
        onSelected: (item) {
          currentScreen(item);
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
      //   ============================= form start.........
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SelectedScreen,
      ),
    );
  }
}