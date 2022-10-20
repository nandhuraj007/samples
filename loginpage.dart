//import 'dart:async';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'routingPage.dart' as route;
class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new Login(),
        backgroundColor: Colors.black54,
        title: Text('Focus on how \nto be sociaL, not on\nhow to do sociaL',
            style: TextStyle(fontSize: 30.0,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = const LinearGradient(
                  colors: <Color>[
                    Colors.pinkAccent,
                    Colors.deepPurpleAccent,
                    Colors.red
                  ],
                ).createShader(Rect.fromLTWH(10.0, 0.0, 200.0, 100.0)
                )
            )
        ),
        image: new Image.asset('assets/images/mylogo.png'),
        loadingText: Text("A Better Life Loading",
          style: TextStyle(
          fontSize: 19,
            fontWeight:FontWeight.bold
        ),
        ),
        photoSize: 200.0,
        loaderColor: Colors.teal,
      ),
    );
  }
}
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final _formGlobalKey = GlobalKey <FormState>();
  var size,height,width,temp;
  String _error='';
  @override
  bool _isHidden = true;
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Form(
      key: _formGlobalKey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            decoration:  BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.cyanAccent, Colors.teal.shade600],
                radius: 0.75,
                focal: Alignment(0.0, -0.7),
                tileMode: TileMode.clamp,
              ),
            ),
            child: Center(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Center(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: Text("Login Here ",
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..shader = const LinearGradient(
                                    colors: <Color>[
                                      Colors.pinkAccent,
                                      Colors.black,
                                      Colors.red
                                    ],
                                  ).createShader(
                                      Rect.fromLTWH(10.0, 0.0, 200.0, 100.0))
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0),
                                      ),
                                      border: OutlineInputBorder(),
                                      hintText: "Enter Email",
                                      label: Text("Email"),
                                      icon: Icon(Icons.email,
                                        color: Colors.teal.shade900,)
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Please Enter Email';
                                    }
                                    if(!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$").hasMatch(value)){
                                      return 'Email is not valid';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextFormField(
                            obscureText: _isHidden,
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 2.0),
                              ),
                              labelText: 'Password',
                              icon: Icon(Icons.lock,color: Colors.teal.shade900,),
                              border: OutlineInputBorder(),
                              hintText: "Enter Password",
                              suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  _isHidden
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please Enter Password';
                              }
                              // if(!RegExp(r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$").hasMatch(value)){
                              //   return 'Password 6-10 characters with a mixture of Uppercase and Lowercase ';
                              // }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: 300.0,
                            height: 50,
                            child: ElevatedButton(
                                child: Text("Login"),
                                onPressed: () {
                                  if(_formGlobalKey.currentState!.validate()){
                                    Navigator.pushNamed(context, route.homePage);
                                  }
                                }
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(onPressed: () {
                          //Navigator.pushNamed(context, route.updatePassword);
                        },
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.teal.shade900
                              ),
                            )
                        ),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                    text: 'Need an account?',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 20),
                                    children: <TextSpan>[
                                      TextSpan(text: ' Sign up',
                                          style: TextStyle(
                                              color: Colors.blueAccent.shade700,
                                              fontSize: 20),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.pushNamed(
                                                  context, route.registrationPage);
                                              // navigate to desired screen
                                            }
                                      )
                                    ]
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
