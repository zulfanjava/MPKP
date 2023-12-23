import 'package:flutter/material.dart';
import 'package:mpkps/reusbale_widgets/reusable_widgets.dart';
import 'package:mpkps/screens/signup_screen.dart';
import 'package:mpkps/utils/colors_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();

}

class _SignInScreenState extends State<SignInScreen>{
  
  final FirebaseAuth man = FirebaseAuth.instance;
  
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringColor("#FFFF00"),
            hexStringColor("#0000FF")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0), 
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/jata_trans.png'),
                  SizedBox(
                    height: 30,
                  ),
                  reusableTextField("Enter email", Icons.person_outlined, false,
                   _emailTextController, suffixIconOnPressed: () {  }),
                  SizedBox(
                      height: 30,
                  ),
                  reusableTextField(
                    "Enter password", Icons.lock_outline, true, 
                    _passwordTextController, suffixIconOnPressed: () {  }),
                  SizedBox(
                    height: 20,
                  ),
                 signInSignUpButton(context, true, man, _emailTextController, _passwordTextController),

                  signUpOption()
                ],
              ),
          ),
        ),
      ), 
    );
  } 

  Row  signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
          style: TextStyle(color: Colors.white70)),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
            child: const Text(
              " Sign Up",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
