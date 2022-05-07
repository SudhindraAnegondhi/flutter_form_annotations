// ignore_for_file: lines_longer_than_80_chars

import 'validations.dart' as validations;

class FormValidators {
  static String? email(String? value, {String? message}) =>
      value == null || value.isEmpty || validations.isEmail(value) ? null : message ?? 'Please enter a valid email';
  static String? phone(String? value, {String? message}) =>
      value == null || value.isEmpty || (validations.isNumeric(value) && value.length == 10) ? null : message ?? 'Please enter a valid phone number';
  static String? numeric(String? value, {String? message}) =>
      value == null || value.isEmpty || validations.isNumeric(value) ? null : message ?? 'Please enter a valid number';
  static String? date(String? value, {String? message}) =>
      value == null || value.isEmpty || validations.isDate(value) ? null : message ?? 'Please enter a valid date';
  static String? name(String? value, {String? message}) =>
      value == null || value.isEmpty || validations.isName(value) ? null : message ?? 'Please enter a valid name';
  static String? min(String? value, int arg, {String? message}) =>
      value == null || value.isEmpty || value.length >= arg ? message ?? null : 'Please enter a value greater than or equal to $arg';
  static String? max(String? value, int arg, {String? message}) =>
      value == null || value.isEmpty || value.length <= arg ? message ?? null : 'Please enter a value less than or equal to $arg';
  static String? fixedLength(String? value, int arg, {String? message}) =>
      value == null || value.isEmpty || value.length != arg ? message ?? null : 'Please enter a valid length';
  static String? minLength(String? value, int arg, {String? message}) =>
      value == null || value.isEmpty || value.length < arg ? message ?? null : 'Please enter a valid length';
  static String? maxLength(String? value, int arg, {String? message}) =>
      value == null || value.isEmpty || value.length > arg ? message ?? null : 'Please enter a valid length';
  static String? range(String? value, int arg, int arg2, {String? message}) =>
      value == null || value.isEmpty || value.length < arg || value.length > arg2 ? message ?? null : 'Please enter a value between $arg and $arg2';

  static String? required(String? value, {String? message}) => value == null || value.isNotEmpty ? null : message ?? 'This field is required';

  static String? notNull(String? value, {String? message}) => value == null ? message ?? 'This field is required to have a value' : null;

  static String? match(String? value, String pattern, {String? message}) =>
      value == null || value.isEmpty || validations.matches(value, pattern) ? null : message ?? 'The pattern "$pattern" does not match the input';
  static String? url(
    String? value, {
    String? message,
    List<String?> protocols = const ['http', 'https', 'ftp'],
    bool requireTld = true,
    bool requireProtocol = false,
    bool allowUnderscore = false,
    List<String> hostWhitelist = const [],
    List<String> hostBlacklist = const[],
  }) =>
      value == null || value.isEmpty || validations.isURL(value,
      protocols: protocols,
      requireTld: requireTld,
      requireProtocol: requireProtocol,
      allowUnderscore: allowUnderscore,
      hostWhitelist: hostWhitelist,
      hostBlacklist: hostBlacklist) ? null : message ?? 'Please enter a valid URL';

}
