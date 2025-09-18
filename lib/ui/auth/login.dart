import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailCtr=TextEditingController();
  final passwordCtr=TextEditingController();
  final emailFocus=FocusNode();
  final passwordFocus=FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailCtr,
            keyboardType: TextInputType.emailAddress,
            focusNode:emailFocus ,
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder()
            ),
            onChanged: (val){},
            onFieldSubmitted: (val){},
          ),
          SizedBox(height: 20,),
          TextFormField(
            controller: passwordCtr,
            keyboardType: TextInputType.text,
            focusNode: passwordFocus,
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder()
            ),
            onChanged: (val){},
            onFieldSubmitted: (val){},
          ),
          ElevatedButton(onPressed: (){}, child: Text("Login"))
        ],
      ),
    );
  }
}
