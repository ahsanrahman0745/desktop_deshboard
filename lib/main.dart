import 'package:desktop_deshboard/account/all_expenses.dart';
import 'package:desktop_deshboard/class_routine/student_routine.dart';
import 'package:desktop_deshboard/class_routine/teacher_routine.dart';
import 'package:desktop_deshboard/notice/all_notice.dart';
import 'package:desktop_deshboard/result/all_results.dart';
import 'package:desktop_deshboard/student/add_student_form.dart';
import 'package:desktop_deshboard/student/list_of_student.dart';
import 'package:desktop_deshboard/student/student_profile.dart';
import 'package:desktop_deshboard/teacher/list_of_teacher.dart';
import 'package:desktop_deshboard/teacher/teacher_profile.dart';
import 'package:flutter/material.dart';
import 'account/fee _collection.dart';
import 'account/payment_method.dart';
import 'attendence/student_attendence.dart';
import 'attendence/teacher_attendence.dart';
import 'class/add_class.dart';
import 'login/login_screen.dart';
import 'notice/approve.dart';
import 'promote_class/promote_class.dart';
import 'package:desktop_window/desktop_window.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DesktopWindow.setMinWindowSize(const Size(1382, 800));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Desktop Deshboard",
      initialRoute: "/",
      routes: {
        '/': (context) => const LoginScreen(),
        '/second': (context) => const ListOfTeacher(),
        '/third': (context) => const TeacherProfile(),
        '/four': (context) => const AddStudentForm(),
        '/five': (context) => const ListOfStudent(),
        '/Six': (context) => const StudentProfile(),
        '/seven': (context) => const AddStudentForm(),
        //============================
        '/Eight': (context) => const AllResults(),
        '/nine': (context) => const FeeCollection(),
        '/ten': (context) => const PaymentMethod(),
        '/eleven': (context) => const AllExpenses(),

        '/ twelve': (context) => const AddClass(),
        // '/ thirteen': (context) => AddClass(),
        '/ fourteen': (context) => const StudentRoutine(),
        '/fifteen': (context) => const TeacherRoutine(),
        '/sixteen': (context) => const StudentAttendence(),
        '/seventeen': (context) => TeacherAttendence(),
        // '/eighteen': (context) => TeacherRoutine(),
        '/nineteen': (context) => const PromoteClass(),
        '/twenty': (context) => const AllNotice(),
        '/twenty-one': (context) => const Approve(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}