import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screens/MainPage.dart';
import '/screens/home_screen.dart';
import 'Admin_Checker.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller, {required Null Function() suffixIconOnPressed}) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,       
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),
      keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container signInSignUpButton(BuildContext context, bool isLogin, FirebaseAuth _auth, TextEditingController _emailTextController, TextEditingController _passwordTextController){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
        onPressed: () async {
          try {
            UserCredential userCredential;
            final NavigatorState navigator = Navigator.of(context);
            if (isLogin) {
              userCredential = await _auth.signInWithEmailAndPassword(
                  email: _emailTextController.text,
                  password: _passwordTextController.text
              );
              print("You have signed in");
            } else {
              userCredential = await _auth.createUserWithEmailAndPassword(
                  email: _emailTextController.text,
                  password: _passwordTextController.text
              );
              print("You have signed up");
            }

            // User successfully signed in/up
            // Check if the user is an admin or a normal user
            final bool isAdmin = await checkIfUserIsAdmin(userCredential.user); // Add this line

            // Navigate to home screen or dashboard
            if (isAdmin) { // Add this line
              print("Navigating to MainPage");
              navigator.push(MaterialPageRoute(builder: (context) => MainPage()));
            } else { // Add this line
              print("Navigating to Homescreen");
              navigator.push(MaterialPageRoute(builder: (context) => const Homescreen()));
            } // Add this line
          } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
              print('No user found for that email.');
            } else if (e.code == 'wrong-password') {
              print('Wrong password provided for that user.');
            } else if (e.code == 'invalid-email') {
              print('The email address is badly formatted.');
            }
          }
        },
        child: Text(
        isLogin? 'LOG IN' : 'SIGN UP',
        style: const TextStyle(
          color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.pressed)){
          return Colors.black26;
        }
        return Colors.white;
      }), shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))))
    ), 
  );
}




