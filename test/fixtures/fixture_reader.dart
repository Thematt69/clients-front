import 'dart:io';

String fixture(String name) {
  var path = Directory.current.path;
  if (!path.contains("\\test") && !path.contains("/test")) {
    path += "/test";
  }

  return File('$path/fixtures/$name').readAsStringSync();
}
