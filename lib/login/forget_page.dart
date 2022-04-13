import 'package:desktop_deshboard/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'login_constant.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({Key? key}) : super(key: key);

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  @override
  Widget build(BuildContext context) {
    //========================================email validation
    final emailValidator1 = MultiValidator([
      RequiredValidator(errorText: 'email is required'),
      PatternValidator(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
          errorText: 'example@gmail.com')
    ]);
    String email1;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Center(
        child: Container(
          width: 365,
          height: 285,
          child: Stack(
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
                        padding: EdgeInsets.only(top: 50),
                        child: Text(
                          "RESET THE PASSWORD",
                          style: TextStyle(
                              color: backgroundcolor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
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
                          onChanged: (val) => email1 = val,
                          // assign the the multi validator to the TextFormField validator
                          validator: emailValidator1,
                        ),
                      ),

                      //====================================Reset Button
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                              },
                              child: const Text('Reset',
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