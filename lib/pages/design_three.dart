import 'package:flutter/material.dart';
import 'package:login_ui/pages/design_one.dart';

class LostPassword extends StatefulWidget {
  @override
  _LostPasswordState createState() => _LostPasswordState();
}

class _LostPasswordState extends State<LostPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Lost\n",
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87)),
                    TextSpan(
                      text: "Password",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                    TextSpan(
                      text: "?\n",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    ),
                    TextSpan(
                      text: "Don't worry we are here",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black45),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration:
                    InputDecoration(hintText: "Registered E-mail/Mobile No."),
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
                        "RESET PASSWORD",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LostPassword()));
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Go To ",
                            style: TextStyle(color: Colors.black87),
                          ),
                          TextSpan(
                            text: "Login",
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
