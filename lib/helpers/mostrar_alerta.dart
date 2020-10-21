import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

mostrarAlerta(BuildContext context, String titulo, String subtitulo) {
  if (Platform.isAndroid) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text(titulo),
              content: Text(subtitulo),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                  elevation: 5,
                  textColor: Colors.blue,
                ),
              ],
            ));
  } else {
    showCupertinoDialog(
        context: context,
        builder: (_) => CupertinoAlertDialog(
              title: Text(titulo),
              content: Text(subtitulo),
              actions: <Widget>[
                CupertinoDialogAction(
                  isDefaultAction: true,
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ));
  }
}
