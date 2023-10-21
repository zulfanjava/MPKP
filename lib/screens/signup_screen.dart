import 'package:flutter/material.dart';
import 'package:mpkps/reusbale_widgets/reusable_widgets.dart';
import 'package:mpkps/screens/home_screen.dart';
import 'package:mpkps/utils/colors_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
          hexStringColor("#FFFF00"),
          hexStringColor("#0000FF")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                    reusableTextField("Enter username", Icons.person_outlined, false,
                   _userNameTextController, suffixIconOnPressed: () {  }),
                  const SizedBox(
                    height: 20,
                  ),
                    reusableTextField("Enter Email", Icons.person_outlined, false,
                   _emailTextController, suffixIconOnPressed: () {  }),
                  const SizedBox(
                    height: 20,
                  ),
                    reusableTextField("Enter Password", Icons.lock_outlined, true,
                    _passwordTextController, suffixIconOnPressed: () {  }),
                  const SizedBox(
                    height: 20,
                  ),
                  signInSignUpButton(context, false, _auth, _emailTextController, _passwordTextController)

                ],
              ),
          ),
          )
        );
  }
}
