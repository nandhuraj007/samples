import 'package:flutter/material.dart';
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        centerTitle: true,
        actions: [
          PopupMenuButton(onSelected: (value) {
            // your logic
            setState(() {
              selectedItem = value.toString();
            });
            print(value);
            Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("Call"),
                value: '/calls',
              ),
              PopupMenuItem(
                child: Text("Sms"),
                value: '/sms',
              ),
              PopupMenuItem(
                child: Text("Mail"),
                value: '/mails',
              ),
              PopupMenuItem(
                child: Text("web"),
                value: '/webs',
              )
            ];
          })
        ],
      ),
      body: Center(
        child: Text(selectedItem),
      ),
    );
  }
}



















home: const homePage(),
      routes: {
        '/calls': (context) => const ForCall(),
        '/sms': (context) => const ForSMS(),
        '/mails': (context) => const ForWmail(),
        '/webs': (context) => const ForWebsite()
      },
    );
