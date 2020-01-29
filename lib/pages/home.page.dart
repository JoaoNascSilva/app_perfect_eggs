import 'package:app_perfect_eggs/widgets/type-buttons.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            TypeButtons(),
          ],
        )
      ),
    );
  }
}