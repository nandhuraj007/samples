import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Examples extends StatefulWidget {
  const Examples({Key? key}) : super(key: key);

  @override
  State<Examples> createState() => _ExamplesState();
}

class _ExamplesState extends State<Examples> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  late final Future<int> _counter;

  Future <void> _incrementCounter() async {
    final SharedPreferences preferences = await _preference;
    final counter = (preferences.getInt('counter') ?? 0) + 1;
    setState(() {
      _counter = preferences.setInt('counter', counter).then((bool success) {
        return counter;
      }
      );
    });
  }
    @override
    void initState() {
      // TODO: implement initState
      // super.initState();
      _counter = _preference.then((SharedPreferences preference) {
        return preference.getInt('counter') ?? 0;
      }
      );
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
            child: FutureBuilder(
              future: _counter,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    {
                      return const CircularProgressIndicator();
                    }
                  default:
                    if (snapshot.hasError) {
                      return Text('Error :${snapshot.error}');
                    }
                    else {
                      return Text(
                          'Button tapped ${snapshot.data} time${snapshot.data ==
                              1 ? '' : 's'}');
                    }
                }
              },

            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: const Icon(Icons.add),
        ),
      );
    }
  }
