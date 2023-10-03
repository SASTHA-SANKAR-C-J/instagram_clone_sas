import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/bottomnavigationbar/bottomnavbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login_screen/login_screen.dart';



class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();

  GlobalKey<FormState> passFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();
   String pass='';
   String user='';

   Future<void> setname({required String value}) async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('user', value);
}

Future<void> setmail({required String value}) async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString('email', value);
}

Future<void> setcheck({required bool value}) async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setBool('checker', value);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 80,
                      width: 200,
                      child: Image.network(
          "https://1000logos.net/wp-content/uploads/2017/02/Logo-Instagram-1-768x432.png",
          
        )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign up to see photos and pictures from your friends",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 327,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook),
                    SizedBox(
                      width: 7,
                    ),
                    Center(
                        child: Text(
                      'Log in with Facebook',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 150,
                    color: Colors.grey.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 150,
                    color: Colors.grey.shade700,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: emailFormKey,
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    fillColor: Colors.grey.shade700,
                    prefixIconColor: Colors.white,
                    filled: true,
                    constraints: BoxConstraints.tightFor(width: 327, height: 50),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Email',
                  ),
                  validator: (value) {
                    if(emailController.text.contains('@')){
                      return null;
                    }else{
                      return "enter a valid email";
                    }
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)),
                  fillColor: Colors.grey.shade700,
                  prefixIconColor: Colors.white,
                  filled: true,
                  constraints: BoxConstraints.tightFor(width: 327, height: 50),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'Full Name',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)),
                  fillColor: Colors.grey.shade700,
                  prefixIconColor: Colors.white,
                  filled: true,
                  constraints: BoxConstraints.tightFor(width: 327, height: 50),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'Username',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Form(
                key: passFormKey,
                child: TextFormField(
                  controller: passController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    fillColor: Colors.grey.shade700,
                    prefixIconColor: Colors.black,
                    filled: true,
                    constraints: BoxConstraints.tightFor(width: 327, height: 50),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Password',
                  ),
                  validator: (value) {
                    if(passController.text.length>=8){
                      return null;
                    } else {return "enter minimum 8 characters";}
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () async {
                  if (emailFormKey.currentState!.validate() &&
                      passFormKey.currentState!.validate()) {
                        setcheck(value: false);
                        String user = passController.text;
                        setname(value: user);
                        String email = emailController.text;
                        setmail(value: email);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavScreen()),
                    );
                  }
                },
                child: Container(
                  width: 327,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By signing up, you agree to our Terms and Policy",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account ? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      " Log in",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
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