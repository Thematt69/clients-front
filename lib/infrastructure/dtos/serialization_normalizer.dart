bool boolNormalizer(dynamic value) {
  if (value == null) return null;

  if (value.toString() == '0') {
    return false;
  } else {
    return true;
  }
}

int toJsonBoolNormalizer(bool value) {
  if (value == true) {
    return 1;
  } else {
    return 0;
  }
}

double stringToDoubleNormalizer(dynamic value) {
  if (value == null) {
    return null;
  }

  return double.tryParse(value.toString());
}

String dateTimeToDateAsString(dynamic value) {
  if (value == null) return null;

  return '${value.year}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}';
}

String dateTimeToDateWithHoursAsString(dynamic value) {
  if (value == null) return null;

  return '${value.year}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')} ${value.hour.toString().padLeft(2, '0')}:${value.minute.toString().padLeft(2, '0')}:${value.second.toString().padLeft(2, '0')}';
}
