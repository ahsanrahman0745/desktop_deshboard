import 'package:desktop_deshboard/class_routine/student_routine.dart';
import 'package:desktop_deshboard/class_routine/teacher_routine.dart';
import 'package:desktop_deshboard/student/add_student_form.dart';
import 'package:desktop_deshboard/student/list_of_student.dart';
import 'package:desktop_deshboard/student/student_profile.dart';
import 'package:desktop_deshboard/teacher/add%20_teacher_form.dart';
import 'package:desktop_deshboard/teacher/list_of_teacher.dart';
import 'package:desktop_deshboard/teacher/teacher_profile.dart';
import 'package:flutter/material.dart';

import 'add_school/add_school_form.dart';
import 'attendence/student_attendence.dart';
import 'class/add_class.dart';
import 'login/forget_page.dart';
import 'login/login_screen.dart';
import 'promote_class/promote_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Desktop Deshboard",
      debugShowCheckedModeBanner: false,
      home:
          //ForgetPage(),
          ListOfTeacher(),
    );
  }
}