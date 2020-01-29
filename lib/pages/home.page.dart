import 'package:app_perfect_eggs/blocs/app.bloc.dart';
import 'package:app_perfect_eggs/widgets/action-buttons.widgets.dart';
import 'package:app_perfect_eggs/widgets/eggs.widgets.dart';
import 'package:app_perfect_eggs/widgets/progress.widget.dart';
import 'package:app_perfect_eggs/widgets/type-buttons.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50,),
            Text(
              "Perfect Eggs",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Eggs(),
            Padding(
              padding: const EdgeInsets.all(6),
              child: TypeButtons(),
            ),
            Progress(),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(6),
              child: 
                ActionButtons(),
            )
          ],
        )
      ),
    );
  }
}