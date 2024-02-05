import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showCupertinoDialogExample(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title:const Text("Subscribe"),
        content: const Text("Do you want to subscribe."),
        actions: [
          CupertinoDialogAction(
            child:const  Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          CupertinoDialogAction(
            child:const  Text("Yes"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}