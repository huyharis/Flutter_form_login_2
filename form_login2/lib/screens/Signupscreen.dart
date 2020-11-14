import 'package:flutter/material.dart';
import 'package:form_login2/screens/Loginsreen.dart';

class Signupscreen extends StatelessWidget {
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
                    "Create account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
              CustomTextField(
                hint: 'Enter Your Name',
                secured: false,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Enter Your Email',
                secured: false,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Enter Your Phone',
                secured: false,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Enter Your Password',
                secured: true,
              ),
              SizedBox(
                height: 35,
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
                      'Create Account',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    ),
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
