import 'package:flutter/material.dart';
import 'package:form_login2/screens/Signupscreen.dart';

class Loginsreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.blue[400]],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
            image: DecorationImage(
                image: AssetImage("images/1.png"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Sign In With Your Account',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                ],
              ),
              CustomTextField(
                hint: 'Email/Phone',
                secured: false,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'Password',
                secured: true,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Text(
                        'Forget Password? ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  '-Or-',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/fb.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('images/google.png')
                  ],
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have An Account ? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => Signupscreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String hint;
  bool secured;
  CustomTextField({this.hint, this.secured});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: TextField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        obscureText: secured,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
              color: Colors.white70,
              fontWeight: FontWeight.w700,
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(.3),
            focusColor: Colors.transparent),
      ),
    );
  }
}
