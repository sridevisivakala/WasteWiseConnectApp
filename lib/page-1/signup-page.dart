
import 'package:flutter/material.dart';

import 'package:myapp/page-1/intro-1.dart';
import 'package:myapp/page-1/login-page.dart';

void main() async {
  
  runApp(MaterialApp(
    home: signup_portal(),
  ));
}



class signup_portal extends StatefulWidget {
  @override
  _signup_portalState createState() => _signup_portalState();
}

class _signup_portalState extends State<signup_portal> {
  bool valuefirst = false;
  TextEditingController firstname = TextEditingController();
  TextEditingController secondname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool passenable = true;
  bool isEmailverified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(0),
            child: Center(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(147, 67, 148, 11),
                    child: Text('Hey there,'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(91, 11, 92, 32),
                    child: Text(
                      "Create an account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(31, 32, 29, 10),
                    child: TextField(
                      controller: firstname,
                      style: TextStyle(height: 0.5),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        filled: true,
                        fillColor: Color.fromRGBO(231, 238, 238, 0.945),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: 'First name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(31, 10, 29, 10),
                    child: TextField(
                      controller: secondname,
                      style: TextStyle(
                        height: 0.5,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        filled: true,
                        fillColor: Color.fromRGBO(231, 238, 238, 0.945),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: 'Last name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(31, 10, 29, 10),
                    child: TextField(
                      controller: email,
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
                    padding: EdgeInsets.fromLTRB(31, 10, 29, 5),
                    child: TextField(
                        obscureText: passenable,
                        controller: password,
                        style: TextStyle(height: 0.5),
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
                            hintText: 'Password')),
                  ),
                  
              
                  Container(
                    padding: EdgeInsets.fromLTRB(31, 15, 29, 5),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:  Color(0xffdac0a3),
                            shape: StadiumBorder(),
                          ),
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),
                          ),
                          onPressed: () {
                           
                               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intro1()));
                            
                          }),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(25, 5, 29, 10),
                      child: Text(
                        "------------------------------or----------------------------------",
                        style: TextStyle(
                            color: Color.fromARGB(255, 118, 114, 114)),
                      )),
                 
                  Container(
                    padding: EdgeInsets.fromLTRB(74, 5, 72, 20),
                    child: Row(
                      children: <Widget>[
                        Text("Already have an account?"),
                        Flexible(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login_page()),
                                  );
                                },
                                child: Text("Login")))
                      ],
                    ),
                  ),
                ],
              ),
            ))));
  }

  

 
}
