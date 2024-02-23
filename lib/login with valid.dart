import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:januaryflutter/register.dart';

import 'homepage.dart';
void main(){
  runApp(MaterialApp(home:login_valid() ,));
}
class login_valid extends StatefulWidget{
  @override
  State<login_valid> createState() => _login_validState();
}

class _login_validState extends State<login_valid> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(color: Colors.cyan,
        child: Form(
          key: formkey,
          child: Column(
            children: [

               Padding(
                padding: EdgeInsets.only(top: 100,),
                child: Text(
                  'Login Page',
                  style: GoogleFonts.akronim(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,left: 70,right: 70),
                child: TextFormField(
                  validator: (email){
                    if(email!.isEmpty || !email.contains('@') || !email.contains(".")){
                      return "please enter valid email";
                    }
                    else{
                      return null;
                    }
                  },

                  decoration: InputDecoration(
                      labelText: "UserName",
                      hintText: "username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,left: 70,right: 70,bottom: 50),
                child: TextFormField(
                  validator:  (password){
                    if(password!.isEmpty || password.length<6){
                      return "please Enter valid password";
                    }
                    else{
                      return null;
                    }
                  },
                  obscuringCharacter: "*",
                  obscureText: showpass,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon:IconButton(
                      onPressed: () {
                        setState(() {
                          if(showpass==true){
                            showpass=false;
                          }
                          else
                            {
                              showpass=true;
                            }
                        });
                      }, icon: Icon(showpass==true?Icons.visibility_off: Icons.visibility),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                      Colors.green,textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)) ,onPressed: (){
                final valid=formkey.currentState!.validate();
                if(valid){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                }
                else{

                }

              }, child: const Text("Login")),

              TextButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerpage()));
              }, child: const Text("Not a user, create new Account"))



            ],
          ),
        ),
      ),
    );
  }
}