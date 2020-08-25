import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:login_ui/pages/design_three.dart';
import 'package:login_ui/pages/design_two.dart';

class DesignOne extends StatefulWidget {
  @override
  _DesignOneState createState() => _DesignOneState();
}

class _DesignOneState extends State<DesignOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.w600,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "There",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                    TextSpan(
                      text: ".",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: "E-Mail"),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: "PASSWORD"),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Colors.green,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                      color: Colors.green,
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlineButton.icon(
                      icon: Icon(FontAwesome.facebook),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                      onPressed: () {},
                      label: Text(
                        "Login with facebook",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "New in App? ",
                            style: TextStyle(color: Colors.black87),
                          ),
                          TextSpan(
                            text: "Register",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
