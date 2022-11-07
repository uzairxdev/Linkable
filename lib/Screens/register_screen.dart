// ignore_for_file: prefer_const_constructors

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:linkeble/Helper_File/Costum_Color.dart';
import 'login_screen.dart';

class registerScreen extends StatefulWidget {
  registerScreen({super.key});

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  Appcolors allcolors = Appcolors();

  var email = false.obs;
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // for image
                width: 190.w,
                height: 120.h,
                margin: EdgeInsets.only(
                  left: 90.w,
                ),
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("images/linkable.png")),
                ),
              ),
              Container(
                //  for welcome text
                padding: EdgeInsets.only(
                  top: 5.h,
                  left: 20.w,
                ),
                child: Text(
                  "Welcome!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                // for qoutes text
                padding: EdgeInsets.only(left: 50.w, top: 15.h),
                child: Text(
                  "Sign up to access all features and functionality.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
              Container(
                // for email tittle
                padding: EdgeInsets.only(top: 20.h, left: 20.w, bottom: 5.h),
                child: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                // for Eail textfiels
                // Email textfeild
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: Obx(
                  (() => TextFormField(
                        onChanged: (asd) {
                          if (EmailValidator.validate(asd)) {
                            email(true);
                          } else {
                            email(false);
                          }
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          filled: true,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                          prefixIcon: Icon(
                            Icons.mail_outline_outlined,
                            color: Colors.grey,
                            size: 20.0,
                            textDirection: TextDirection.ltr,
                          ),
                          hintText: 'Enter Your Email',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(
                            Icons.done,
                            color: email.value ? Colors.green : Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 4,
                              color: allcolors.lightgreen,
                            ),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 4,
                                color: email.value
                                    ? allcolors.lightgreen
                                    : Colors.red),
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        cursorHeight: 23.0,
                      )),
                ),
              ),
              Container(
                // for username title
                padding: EdgeInsets.only(top: 20.h, left: 20.w, bottom: 5.h),
                child: Text(
                  "Username",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                // for username textfield
                // Username textfeild
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                      size: 20.0,
                      textDirection: TextDirection.ltr,
                    ),
                    hintText: 'Username is must',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.check,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 4,
                        color: allcolors.lightgreen,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 4, color: allcolors.lightgreen),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  cursorHeight: 23.0,
                ),
              ),
              Padding(
                // for qoutes of username texfield
                padding: EdgeInsets.only(
                  top: 2.h,
                  left: 20.w,
                ),
                child: Container(
                  child: Text(
                    "Username will be visible to everyone & You can't change it",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              Container(
                // for Password title
                padding: EdgeInsets.only(top: 20.h, left: 20.w, bottom: 5.h),
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                // for password textfield
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  obscureText:
                      !_passwordVisible, //This will obscure text dynamically
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 20.0,
                      textDirection: TextDirection.ltr,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    hintText: 'Enter Password Here',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 4, color: allcolors.lightgreen),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 4, color: allcolors.lightgreen),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  cursorHeight: 23.0,
                ),
              ),
              Padding(
                // for qoutes of password textield
                padding: EdgeInsets.only(
                    top: 2.h, left: 20.w, bottom: 30.h, right: 20.w),
                child: Container(
                  child: Text(
                    "Enter Upper, LowerCase letters & numbers for strong Password",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              Padding(
                // for sign up button
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: Container(
                  height: 40.h,
                  width: 400.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [allcolors.lightgreen, allcolors.lightgreen],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(60.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: allcolors.lightgreen.withOpacity(1),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        )
                      ]),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Sign up',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "Netflix",
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          letterSpacing: 0.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                // for text and button
                padding: EdgeInsets.only(left: 60.w, right: 20.w, top: 20.h),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginScreen()));
                          },
                          child: Text(
                            "Sign in Here",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
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
      ),
    );
  }
}
