// ignore_for_file: lines_longer_than_80_chars
import 'dart:convert';

enum FieldPropertyType {
  boolean,
  currency,
  date,
  doubleNumber,
  intNumber,
  imageList,
  list,
  map,
  string,
  email,
  name,
  multiLine,
  phone,
  streetAddress,
  url,
  object,
}

enum FormFieldType {
  text,
  textarea,
  dateTimePicker,
  dateRangePicker,
  slideSwitch,
  dropdown,
  radio,
  radioGroup,
  checkbox,
  checkboxGroup,
  filterChip,
  chioceChip,
  rangeSlider,
  object,
}

/// Returns TextInputType for the given [FormFieldType].
String getKeyboardType(String type) {
  var fieldType = FieldPropertyType.string;
  try {
    fieldType = FieldPropertyType.values.firstWhere((e) => e.toString().split('.').last == type.toLowerCase());
  } catch (e) {
    print('FieldPropertyType not found: $type');
  }
  switch (fieldType) {
    case FieldPropertyType.currency:
    case FieldPropertyType.doubleNumber:
    case FieldPropertyType.intNumber:
      return 'TextInputType.number';
    case FieldPropertyType.date:
      return 'TextInputType.datetime';
    case FieldPropertyType.email:
      return 'TextInputType.emailAddress';
    case FieldPropertyType.name:
      return 'TextInputType.name';
    case FieldPropertyType.phone:
      return 'TextInputType.phone';
    case FieldPropertyType.streetAddress:
      return 'TextInputType.streetAddress';
    case FieldPropertyType.url:
      return 'TextInputType.url';
    case FieldPropertyType.multiLine:
      return 'TextInputType.multiline';
    default:
      return 'TextInputType.text';
  }
}

String camelCaseToTitleCase(String label) => label
    .replaceAllMapped(RegExp(r'(?!^)([A-Z])'), (Match match) => ' ${match.group(1)}')
    .split(' ')
    .map((String s) => s[0].toUpperCase() + s.substring(1).toLowerCase())
    .join(' ');

// defs structure:
/*
{"fieldname1":
 { "type":"dartType | object",
    "enable":true,  //default true
    "inputDecoration":{},
    "fieldType":"formFieldType.value ex: 'text'",
    // for formFieldType.textArea, number of lines is required
    "numberOfLines":1,
    // for formFieldType.dateTimePicker,  select date or time mode
    "datePickerMode":"date" | "time",
    // for formFieldType.dateRangePicker, select date range mode
    "dateRange": {"firatDate": date.toIso8601String(), "lastDate":date.toIso8601String()},
    // for formFieldType.rangeSlider, specify range
    "sliderRange": {"min":0, "max":100, "divisions": 10, "activeColor":"#F1FCFF2", "inactiveColor":"#000000"},
    "label":"label",
    "hint":"hint",
   "values": [
     {"value": any value, "label": any label},
    "properties":  "defs map", // for object type, required
    "validators": [
      {"validatorName", custom: "custom validator function", "errorMessage": "error message"},
   ]
  }
  "__sequence": "fieldname1, fieldname2, ..." // for ordering the fields
}

 */
bool hasSubAttributes(Map<String, dynamic> defs, FormFieldType fieldType, String key) {
  final field = defs[key] as Map<String, dynamic>;
  if (fieldType == FormFieldType.textarea ||
      fieldType == FormFieldType.dateTimePicker ||
      fieldType == FormFieldType.dateRangePicker ||
      fieldType == FormFieldType.rangeSlider) {
    if (fieldType == FormFieldType.textarea) {
      return field.containsKey('numberOfLines');
    }

    if (fieldType == FormFieldType.dateTimePicker && field.containsKey('datePickerMode')) {
      return true;
    }
    if (fieldType == FormFieldType.dateRangePicker &&
        field.containsKey('dateRange') &&
        ((field['dateRange'] as Map?) != null && ((field['dateRange'] as Map?)!['firstDate'] != null)) &&
        ((field['dateRange'] as Map?)!['lastDate'] != null)) {
      return true;
    }
    if (fieldType == FormFieldType.rangeSlider &&
        field.containsKey('sliderRange') &&
        (field['sliderRange'] as Map?) != null &&
        (field['sliderRange'] as Map).containsKey('min') &&
        (field['sliderRange'] as Map).containsKey('max') &&
        (field['sliderRange'] as Map).containsKey('divisions')) {
      return true;
    }
  }
  return false;
}

bool isValidType(String type) => FieldPropertyType.values.map((e) => e.toString().split('.').last).contains(type);

bool isValidAttribute(String attribute) => [
      'type',
      'enabled',
      'fieldType',
      'inputDecoration',
      'numberOfLines',
      'datePickerMode',
      'dateRangePicker',
      'sliderRange',
      'label',
      'hint',
      'values',
      'properties',
      'validators',
      'sequence'
    ].contains(attribute);

bool isValidFieldType(String fieldType) => FormFieldType.values.map((e) => e.toString()).contains(fieldType);

bool mustHaveValues(String fieldType) => ['dropdown', 'radio', 'radioGroup', 'checkbox', 'checkboxGroup', 'filterChip', 'chioceChip'].contains(fieldType);

bool isMeta(String key) => ['__sequence'].contains(key);

String valueToType(String? fieldType) {
  String response;
  switch (fieldType) {
    case 'int':
      response = 'int.tryParse(value)';
      break;
    case 'double':
      response = 'double.tryParse(value)';
      break;
    case 'bool':
      response = 'value == \'true\'';
      break;
    case 'DateTime':
      response = 'DateTime.tryParse(value)';
      break;
    case null:
    default:
      response = 'value';
  }
  return response + ';';
}

String typeToValue(String fieldType) {
  String response;
  switch (fieldType) {
    case 'int':
    case 'double':
    case 'bool':
      response = 'value.toString()';
      break;
    case 'DateTime':
      response = 'value.toIso8601String()';
      break;
    default:
      response = 'value';
  }
  return response;
}


dynamic stringToTypeValue(String type, String value) {
  switch (type) {
    case 'int':
      return int.parse(value);
    case 'double':
      return double.parse(value);
    case 'bool':
      return value == 'true';
    case 'DateTime':
      return DateTime.parse(value);
    case 'List<String>':
     return jsonDecode(value) as List<String>;
    case 'List<int>':
      return jsonDecode(value) as List<int>;
    case 'List<double>':
      return jsonDecode(value) as List<double>;
    case 'List<bool>':
      return jsonDecode(value) as List<bool>;
    case 'List<DateTime>':
      return jsonDecode(value) as List<DateTime>;
    case 'List<Map<String, dynamic>>':
      return jsonDecode(value) as List<Map<String, dynamic>>;
    case 'Map<String, dynamic>':
      return jsonDecode(value) as Map<String, dynamic>;
    default:
      return value;
  }
}


