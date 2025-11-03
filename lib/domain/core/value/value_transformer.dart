import 'package:flutter/material.dart';

String stringCapitalize(String text) {
  if (text.isEmpty) return '';
  if (text.length == 1) return text;

  return '${text[0].toUpperCase()}${text.characters.getRange(1).toLowerCase()}';
}

bool isNotEmpty(String text) {
  final pattern = RegExp(
    r'^\s*$',
  ); // matches any string is not empty or white space

  return !pattern.hasMatch(text);
}

String naIfEmpty(String text) {
  return text.isEmpty ? 'NA' : text;
}

String dashIfEmpty(String text) {
  return text.isEmpty ? '-' : text;
}
