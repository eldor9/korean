import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
              child: Text('flutter',style: TextStyle(fontSize: 18,color: Colors.black),).tr(),
            )),
            Row(
              children: [
                Expanded(child: FlatButton(
                    onPressed: () {
                      context.locale = Locale('en', 'US');
                    },
                    color: Colors.green,
                    child: Text(
                      'English',
                      style: TextStyle(color: Colors.white),
                    ))),
                SizedBox(width: 10),
                Expanded(child: FlatButton(
                    onPressed: () {
                      context.locale = Locale('ko', 'KO');
                    },
                    color: Colors.blue,
                    child: Text(
                      'Korean',
                      style: TextStyle(color: Colors.white),
                    ))),
                SizedBox(width: 10),
                Expanded(child: FlatButton(
                    onPressed: () {
                      context.locale = Locale('ja', 'JA');
                    },
                    color: Colors.red,
                    child: Text(
                      'Japan',
                      style: TextStyle(color: Colors.white),
                    ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
