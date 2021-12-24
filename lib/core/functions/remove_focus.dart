// ignore_for_file: non_constant_identifier_names



import 'package:flutter/cupertino.dart';

void removeFocus(context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}
