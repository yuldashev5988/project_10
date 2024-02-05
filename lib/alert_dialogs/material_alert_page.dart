import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showMaterialDialogExample(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title:const  Text('Subscribe'),
        content:const  Text('Do you want to subscribe.'),
        actions: <Widget>[
          TextButton(
            child:const  Text('Cancel'),
            onPressed: () {

              Navigator.of(context).pop(); // Close the dialog
            },
          ),
          TextButton(
            child:const  Text('Yes'),
            onPressed: () {
              // Perform action when OK is pressed
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        ],
      );
    },
  );
}