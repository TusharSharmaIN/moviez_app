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
