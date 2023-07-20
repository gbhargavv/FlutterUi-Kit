import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/util/hs_colors.dart';
import 'package:flutter_ui_kit/util/hs_strings.dart';
import 'package:flutter_ui_kit/util/text_styles.dart';

import '../util/hs_images.dart';

class HSRegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HSRegisterScreen();
  }
}

class _HSRegisterScreen extends State<HSRegisterScreen> {
  TextEditingController fullNameCont = TextEditingController();
  TextEditingController dateOfBirthCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController addressCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();
  bool _showPassword = false;
  FocusNode fullNameFocusNode = FocusNode();
  FocusNode dateOfBirthFocusNode = FocusNode();
  FocusNode addressFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passWordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: HSColorPrimary,
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  ImageUtils.app_icon,
                  height: 150,
                  width: 150,
                  color: Colors.white,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.only(top: 200),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: fullNameCont,
                        focusNode: fullNameFocusNode,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        style: textStyle(color: HSGreyColor, size: 14),
                        onFieldSubmitted: (value) {
                          FocusScope.of(context)
                              .requestFocus(passWordFocusNode);
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: HSAppDividerColor)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: HSColorPrimary)),
                          labelText: HSFullName,
                          labelStyle:
                              TextStyle(color: HSGreyColor, fontSize: 14),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Name';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: passwordCont,
                        focusNode: passWordFocusNode,
                        textInputAction: TextInputAction.next,
                        obscureText: !_showPassword,
                        keyboardType: TextInputType.text,
                        style: textStyle(color: HSGreyColor, size: 14),
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(emailFocusNode);
                        },
                        // style: primaryTextStyle(),
                        decoration: InputDecoration(
                          labelText: HSPassword,
                          labelStyle: textStyle(color: HSGreyColor, size: 14),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            child: Icon(
                                _showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: HSColorPrimary,
                                size: 20),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: HSAppDividerColor)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: HSColorPrimary)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: emailCont,
                        focusNode: emailFocusNode,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        style: textStyle(color: HSGreyColor, size: 14),
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(addressFocusNode);
                        },
                        // style: primaryTextStyle(),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: HSAppDividerColor)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: HSColorPrimary)),
                          labelText: HSEmail,
                          labelStyle: textStyle(color: HSGreyColor, size: 14),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Email';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: addressCont,
                        focusNode: addressFocusNode,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        style: textStyle(color: HSGreyColor, size: 14),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: HSAppDividerColor)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: HSColorPrimary)),
                          labelText: HSAddress,
                          labelStyle: textStyle(color: HSGreyColor, size: 14),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Address';
                          }
                          return null;
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: HSColorPrimary,
                            padding: EdgeInsets.all(12),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {
                            if(_formKey.currentState!.validate()){

                            }
                            // BHDashedBoardScreen().launch(context);
                          },
                          child: Text(
                            HSBtnSignUp,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
