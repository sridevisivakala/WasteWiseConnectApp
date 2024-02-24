
import 'package:flutter/material.dart';
import 'package:myapp/page-1/forgot-password.dart';
import 'package:myapp/page-1/intro-1.dart';
import 'package:myapp/page-1/signup-page.dart';




void main() {
 
  runApp(const Login_page());

}

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor:  Color(0xffdac0a3),  ),
      home: Login_pages(),
    );
  }
}
  


class Login_pages extends StatefulWidget {
  const Login_pages({super.key});

  @override
  _Login_pagesState createState() => _Login_pagesState();
}

class _Login_pagesState extends State<Login_pages> {
  bool valuefirst = false;
  bool passenable = true;
  final emails = TextEditingController();
  final passwords = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // bool Verify = false;
   
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Center(
          child: SingleChildScrollView(
              child: Column(
                
            children: [
         
         
           
              Container(
                padding: EdgeInsets.fromLTRB(147, 80, 148, 11),
                child: Text('Hey there,'),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(91, 11, 92, 32),
                
                child: Text(
                  "Welcome ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(27, 32, 33, 16),
                child: TextField(
                  controller: emails,
                  style: TextStyle(
                    height: 0.5,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: Color.fromRGBO(231, 238, 238, 0.945),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: 'Email address',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(27, 16, 33, 0),
                child: TextField(
                  obscureText: passenable,
                  controller: passwords,
                  style: TextStyle(
                    height: 0.5,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passenable) {
                              passenable = false;
                            } else {
                              passenable = true;
                            }
                          });
                        },
                        icon: Icon(passenable == true
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    filled: true,
                    fillColor: Color.fromRGBO(231, 238, 238, 0.945),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 200, 16),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Forgot_password()));
                      },
                      child: Text("Forgot password?"))),
              Container(
                padding: EdgeInsets.fromLTRB(27, 16, 33, 5),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:  Color(0xffdac0a3),
                      shape: StadiumBorder(),
                    ),
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),
                    ),
                    onPressed:(){
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intro1()),
                );

                    },
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(25, 16, 29, 10),
                  child: Text(
                    "------------------------------or----------------------------------",
                    style: TextStyle(color: Color.fromARGB(255, 118, 114, 114)),
                  )),
              
              Container(
                  padding: EdgeInsets.fromLTRB(74, 10, 45, 20),
                  child: Row(children: <Widget>[
                    Text("Don't have a Account yet?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signup_portal()),
                          );
                        },
                        child: Text("SignUp"))
                  ])),
  ],
          )),
        ),
      ),
    );
  }

  

}
