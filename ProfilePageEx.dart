import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 30,top: 20,bottom: 10,right: 20),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                ),
                widget(
                  child: SizedBox.fromSize(
                    size: Size(70, 70),
                    child: ClipOval(
                      child: Material(
                        color: Colors.teal,
                        child: InkWell(
                          splashColor: Colors.black87,
                          onTap: () {
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.account_circle),
                              // text
                            ],
                          ),
                          
                          
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Nandhu Raj",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                ),
                Text("Followers 0   Following 0"),
                SizedBox(
                  height: 20,
                ),
                Text("Great code comes from stupid problems!",style: new TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: <Color>[
                          Colors.pinkAccent,
                          Colors.deepPurple.shade200,
                          Colors.tealAccent
                        ],
                      ).createShader(
                          Rect.fromLTWH(10.0, 0.0, 200.0, 100.0))
                )
                )
              ],
            )
          ],
        ),
    )
    );
  }
}
