import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final bool createAccount;

  const LoginForm({super.key, this.createAccount = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              createAccount ? 'Sign Up' : 'Login',
              style:
              TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: Colors.grey[600],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "abc@gmail.com",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Colors.grey[600],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Password',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "* * * * * * * * * *",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'home_screen');
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200.0, 50.0),
                        backgroundColor: Color(0xFF5956E9),
                      ),
                      child: Text(
                        createAccount ? 'Sign Up' : 'Login',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextButton(
                      onPressed: () {
                        createAccount
                            ? Navigator.pushNamed(context, 'login_screen')
                            : Navigator.pushNamed(context, 'sign_up_screen');
                      },
                      child: Text(
                        createAccount ? 'Login' : 'Create Account',
                        style: TextStyle(
                            color: Color(0xFF5956E9),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}