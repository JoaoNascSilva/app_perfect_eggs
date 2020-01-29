import 'package:app_perfect_eggs/blocs/app.bloc.dart';
import 'package:app_perfect_eggs/widgets/button.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    switch (bloc.state) {
      case "stopped":      
        return Button(
          label: "START",
          selected: true,
          callback: bloc.start,
        );
        break;
      case "cooking":
        return Button(
          label: "ALL DONE",
          selected: true,
          callback: bloc.stop,
        );
        break;
      case "done":
        return Button(
          label: "STOP",
          selected: true,
          callback: bloc.reset,
        );
        break;
      default:
        return Button(
          label: "START",
          selected: true,
          callback: bloc.start,
        );
    }
  }
}