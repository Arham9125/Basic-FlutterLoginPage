import 'package:flutter/material.dart';

textfield(
  dynamic clr,
  String txt,
  dynamic icon,
) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: clr,
        suffixIcon: Icon(icon),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintText: txt,
      ),
    ),
  );
}
