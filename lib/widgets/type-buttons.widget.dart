import 'package:app_perfect_eggs/blocs/app.bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'button.widget.dart';

class TypeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == "stopped" ? buttons(bloc) : SizedBox();
  }

  Widget buttons(bloc){
    return Row(
      mainAxisAlignment:  MainAxisAlignment.spaceAround, /*toma todo o espaçamento da tela e tem espaço entre os botões */
      children: <Widget>[
        Button(
          label: "soft",
          selected:  bloc.selected == "soft",
          callback: (){
            bloc.select("soft");
          },
        ),
        Button(
          label: "medium",
          selected:  bloc.selected == "medium",
          callback: (){
            bloc.select("medium");
          },
        ),
        Button(
          label: "hard",
          selected:  bloc.selected == "hard",
          callback: (){
            bloc.select("hard");
          },
        ),
      ],
    );
  }
}