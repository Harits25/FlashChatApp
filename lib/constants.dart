import 'package:flutter/material.dart';

const KSenButtonTextStyle = TextStyle(
 color: Colors.lightBlueAccent,
 fontWeight: FontWeight.bold,
 fontSize: 18.0,
);

const KMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type Your Message Here...',
  border: InputBorder.none,
);

const KMessageCaptionDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);