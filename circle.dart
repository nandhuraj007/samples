import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:social_media_for_community/loginpage.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
        "REZZID",
        style: new TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        foreground: Paint()..shader = LinearGradient(
      colors: <Color>[
        Colors.pinkAccent,
        Colors.deepPurpleAccent,
        Colors.red
      ],
    ).createShader(Rect.fromLTWH(10.0, 0.0, 200.0, 100.0))
    ),
    ),
          actionsIconTheme: IconThemeData(
              color: Colors.black,
              size: 36),
              shadowColor: Colors.redAccent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.teal, Colors.tealAccent])),
          )
      ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: 500,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Stack(
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.teal.withOpacity(1.0),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.teal.withOpacity(1.0),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.teal.withOpacity(1.0),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.teal.withOpacity(1.0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Nandhu raj"),
                accountEmail: Text("nandhuraj@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.teal,
                ),),
              ListTile(
                leading: Icon(Icons.account_circle,
                  color: Colors.teal.shade600,),
                title: Text("Profile"),
                hoverColor: Colors.teal,
                onTap: () {

                },
              ),
              ListTile(
                leading: Icon(Icons.settings,
                  color: Colors.teal.shade600,),
                title: Text("Settings"),
                hoverColor: Colors.teal,
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_phone,
                  color: Colors.teal.shade600,),
                title: Text("Ask"),
                hoverColor: Colors.teal,
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.group_add,
                  color: Colors.teal.shade600,),
                title: Text("Pick a friend"),
                hoverColor: Colors.teal,
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.policy_outlined,
                  color: Colors.teal.shade600,),
                title: Text("Privacy Policy"),
                hoverColor: Colors.teal,
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.logout_outlined,
                  color: Colors.teal.shade600,),
                title: Text("Logout"),
                hoverColor: Colors.redAccent,
                onTap: () {
                },
                //tileColor: Colors.black,
              ),
            ],
          ),
        ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .110,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.teal, Colors.tealAccent]),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .9 : 0,
                    width: index == currentIndex ? displayWidth * .28 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.blueAccent.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                            index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                            index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: displayWidth * .066,
                            color: index == currentIndex
                                ? Colors.black87
                                : Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.menu,
        activeIcon: Icons.close,
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        activeBackgroundColor: Colors.teal.shade900,
        activeForegroundColor: Colors.white,
        visible: true,
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild( //speed dial child
            child: Icon(Icons.groups),
            backgroundColor: Colors.teal.shade600,
            foregroundColor: Colors.white,
            label: 'New Group',
            labelStyle: TextStyle(fontSize: 18.0),
          ),
          SpeedDialChild(
            child: Icon(Icons.brush),
            backgroundColor: Colors.teal.shade400,
            foregroundColor: Colors.white,
            label: 'My Groups',
            labelStyle: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
}
  List<IconData> listOfIcons = [
    Icons.trending_up,
    Icons.groups,
    Icons.search,
    Icons.notifications,
  ];
  List<String> listOfStrings = [
    'Vogue',
    'Groups',
    'Search',
    'Messages',
  ];
}
