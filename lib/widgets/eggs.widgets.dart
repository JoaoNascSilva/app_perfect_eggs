import 'package:app_perfect_eggs/blocs/app.bloc.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Eggs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return defineAnimation(bloc.state);
  }

  Widget defineAnimation(String state) {
    String animation;
    switch (state) {
      case "stopped":
        animation = "eggs";
        break;
      case "cooking":
        animation = "boiling";
        break;
      case "done":
        animation = "egg-cooking";
        break;
      default:
    }
    return Container(
      width: 300,
      height: 300,
      child: FlareActor(
        "assets/animations/$animation.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: "start",
      ),
    );
  }


  Widget stopped() {
    return Container(
      width: 300,
      height: 300,
      child: FlareActor(
        "assets/animations/eggs.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: "start",
      ),
    );
  }

  Widget cooking() {
    return Container(
      width: 300,
      height: 300,
      child: FlareActor(
        "assets/animations/boiling.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: "start",
      ),
    );
  }

  Widget done() {
    return Container(
      width: 300,
      height: 300,
      child: FlareActor(
        "assets/animations/egg-cooking.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: "start",
      ),
    );
  }
}