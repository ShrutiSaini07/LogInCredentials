import 'package:flutter/material.dart';
import 'package:login_signup_page/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var emailText = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText ,
                // enabled: false,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                        width: 2,
                      )
                  ) ,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 2,
                      )
                  ),
                  disabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      )
                  ),
                  suffixIcon: IconButton(
                    icon:Icon(Icons.remove_red_eye,color:Colors.pink,),
                    onPressed: (){

                    },
                  ),

                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: password,
                keyboardType: TextInputType.number,
                obscureText:true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        )
                    )
                ),
              ),
              SizedBox(
                height: 11,
              ),
              ElevatedButton(onPressed: ()async{

                var sharedPref = await SharedPreferences.getInstance();
                sharedPref.setBool(MyHomePageState.KEYLOGIN, true);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                HomePage(),
                ));
              },child: Text(
                  'LogIn'
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
