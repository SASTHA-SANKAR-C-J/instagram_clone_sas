import 'package:flutter/material.dart';
import 'package:instagram_clone_sas/view/bottomnavigationbar/bottomnavbar.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../register_screen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();

  GlobalKey<FormState> passFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  Future<void> setcheck({required bool value}) async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setBool('checker', value);
}
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
                child: Text(
              'English',
              style: TextStyle(color: Colors.black),
            )),
          ),
          Center(
              child: Text(
            '',
            style: TextStyle(color: Colors.black),
          )),
          Column(
            children: [
              Container(
                  height: 100,
                  width: 180,
                  child: Image.network(
          "https://1000logos.net/wp-content/uploads/2017/02/Logo-Instagram-1-768x432.png",
          
        )),
              SizedBox(
                height: 30,
              ),
              Form(
                key: emailFormKey,
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    fillColor: Colors.grey.shade700,
                    prefixIconColor: Colors.black,
                    filled: true,
                    constraints:
                        BoxConstraints.tightFor(width: 327, height: 50),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'email',
                    
                  ),
                  validator: (value) {
                    if (emailController.text.contains("@")) {

                      return null;
                    } else {
                      return "enter a valid email";
                    }
                  },
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
                    constraints:
                        BoxConstraints.tightFor(width: 327, height: 50),
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
                  SharedPreferences pref = await SharedPreferences.getInstance();
                  if (emailFormKey.currentState!.validate() &&
                      passFormKey.currentState!.validate() && emailController.text==pref.getString('email') && passController.text == pref.getString('user')){
                        setcheck(value: false);
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
                    'Login',
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
                    "Forgot your login details? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Get help logging in.",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Center(
              child: Text(
            '',
            style: TextStyle(color: Colors.black),
          )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ),
                    );
                  },
                  child: Text(
                    " Sign up",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}