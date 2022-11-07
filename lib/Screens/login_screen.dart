// ignore_for_file: prefer_const_constructors

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:linkeble/Helper_File/Costum_Color.dart';
import 'package:linkeble/Screens/Register_Screen.dart';

class loginScreen extends StatefulWidget {
  loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
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
                // for Welcome text
                padding: EdgeInsets.only(
                  top: 5.h,
                  left: 20.w,
                ),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                // for qoute text
                padding: EdgeInsets.only(left: 50.w, top: 15.h),
                child: Text(
                  "Sign in to our app to hire exactly what you need.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
              Container(
                // for Email title
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
                // here is Password textfield
                padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 30.h),
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
                // use for the sign in button
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
                        colors: [
                          allcolors.lightgreen,
                          allcolors.lightgreen,
                        ],
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
                        'Sign in',
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
                // don't have an account sign up here .... use for this
                padding: EdgeInsets.only(left: 90.w, right: 20.w, top: 20.h),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "Don't have account?",
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
                                    builder: (context) => registerScreen()));
                          },
                          child: Text(
                            "Sign up Here",
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
              Row(
                // here is use the divider
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Divider(
                        color: allcolors.lightgreen,
                        height: 40.h,
                        thickness: 1.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Text(
                      "OR Sign in With",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Divider(
                        color: allcolors.lightgreen,
                        height: 40.h,
                        thickness: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                // here is last 2 buttons ... google and facebook
                padding: EdgeInsets.only(
                  top: 20.h,
                  left: 20.w,
                  right: 20.w,
                ),
                child: Container(
                    child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          height: 30.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            color: allcolors.google,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(60.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.g_mobiledata_outlined,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'Google',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          height: 30.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            color: allcolors.facebook,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(60.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.facebook_sharp,
                                color: Colors.white,
                                size: 20.0,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'Facebook',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
