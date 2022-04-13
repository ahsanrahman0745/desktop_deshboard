import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../student/add_student_form.dart';
import 'forget_page.dart';
import 'login_constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //========================================email validation
    final emailValidator = MultiValidator([
      RequiredValidator(errorText: 'email is required'),
      PatternValidator(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
          errorText: 'example@gmail.com')
    ]);
    String email;

    //========================================password validation
    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: 'password is required'),
      MinLengthValidator(
        6,
        errorText: 'password must be at least 6 digits long',
      ),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
          errorText: ' one special character must')
    ]);
    String password;

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Center(
        child: Container(
          width: 300,
          height: 390,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Card(
                color: backgroundcolor1.withBlue(255),
                shadowColor: Color(0xff000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                elevation: 9,
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage(
                            "images/logo.png",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          cursorColor: headingcolor,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 4),
                            hintText: "Email",
                            errorStyle: const TextStyle(color: headingcolor),
                            hintStyle: const TextStyle(color: headingcolor),
                            prefixIcon: const Icon(
                              Icons.email_rounded,
                              color: headingcolor,
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: backgroundcolor,
                              ),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: backgroundcolor,
                              ),
                            ),
                            enabledBorder: myinputborder(),
                            focusedBorder: myfocusborder(),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          //=========================================
                          onChanged: (val) => email = val,
                          // assign the the multi validator to the TextFormField validator
                          validator: emailValidator,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //==============================second text field

                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          cursorColor: headingcolor,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 12),
                            hintText: "Password",
                            errorStyle: const TextStyle(color: headingcolor),
                            hintStyle: const TextStyle(
                              color: headingcolor,
                            ),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: headingcolor,
                            ),
                            errorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: backgroundcolor,
                              ),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                color: backgroundcolor,
                              ),
                            ),
                            enabledBorder: myinputborder(),
                            focusedBorder: myfocusborder(),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          //=========================================
                          onChanged: (val) => password = val,
                          // assign the the multi validator to the TextFormField validator
                          validator: passwordValidator,
                        ),
                      ),
                      //Text Line
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 6, 16, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => ForgetPage()),
                              );
                            },
                            child: Container(
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Add submit Button
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
                          child: Container(
                            height: 36,
                            width: 90,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(6.0),
                              ),
                              color: backgroundcolor,
                              textColor: Colors.white,
                              splashColor: backgroundcolor,
                              focusColor: backgroundcolor,
                              highlightColor: backgroundcolor,
                              hoverColor: backgroundcolor,

                              //
                              elevation: 0,
                              focusElevation: 0,
                              hoverElevation: 0,
                              highlightElevation: 0,
                              disabledElevation: 0,

                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => AddStudentForm()),
                                );
                              },
                              child: const Text('LOG IN',
                                  style: TextStyle(fontSize: textsize2)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //  ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(

        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: backgroundcolor,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: backgroundcolor,
          // width: 3,
        ));
  }
}