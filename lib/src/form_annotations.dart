// ignore_for_file: omit_local_variable_types

import 'dart:mirrors';

// ignore_for_file: lines_longer_than_80_chars
/*
class GenerateForm {
  const GenerateForm({this.defs});
  final String? defs;
}

class GenerateSubForm {
  const GenerateSubForm({this.defs});
  final String? defs;
}

class Lookup {
  final String? url;
  const Lookup({this.url});
}

*/

//*****************************
//  property  definitions
//*****************************/
final $properties = <String, dynamic>{
  'label': 'String',
  'hint': 'String',
  'enabled': 'bool',
  'inputDecorator': 'Map<String, dynamic>',
  'type': 'String',
  'validators': 'List<Map<String, dynamic>>',
  'initialValue': 'String',
  'options': 'List<Map<String, dynamic>>',
  'sequence': 'double',
  'properties': 'List<Map<String, dynamic>>',
};

class FormBuilder {
  const FormBuilder({this.defs});
  final String? defs;
}

Map<String, String> getClassProperties(Type type) {
  final Map<String, String> properties = {};
  for (final v in reflectClass(type).declarations.values) {
    final _name = MirrorSystem.getName(v.simpleName);
    if (v is VariableMirror) {
      properties[_name] = v.type.reflectedType.toString();
    }
  }
  return properties;
}



class FieldText {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<String>? validators;
  final dynamic initialValue;
  final double? sequence;

  const FieldText({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue, this.sequence});
}

class FieldTextArea {
  final String? label;
  final int? maxLines;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<String>? validators;
  final dynamic initialValue;
  final double? sequence;

  FieldTextArea(this.label, this.maxLines, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue, this.sequence);

  
}

class FieldFilterChip {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<String>? options;
  final dynamic initialValue;
  final double? sequence;

  const FieldFilterChip({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.options, this.initialValue, this.sequence});
}

class FieldChoiceChip {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<String>? options;
  final dynamic initialValue;
  final double? sequence;

  const FieldChoiceChip({
    this.label,
    this.hint,
    this.enabled,
    this.inputDecoration,
    this.type,
    this.options,
    this.initialValue,
    this.sequence,
  });
}

class FieldDateTimePicker {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // date, time, dateTime, dateTimeLocal, month, week, time

  const FieldDateTimePicker({this.label, this.hint, this.enabled, this.inputDecoration, this.type});
}

class FieldDateRangePicker {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // date, time, dateTime, dateTimeLocal, month, week, time
  final double? sequence;
  final List<String>? validators;

  const FieldDateRangePicker({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.sequence, this.validators});
}

class FieldRangeSlider {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<String>? validators;
  final dynamic initialValue;
  final double? sequence;

  const FieldRangeSlider({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue, this.sequence});
}

class FieldCheckbox {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // bool
  final List<String>? validators;
  final dynamic initialValue;
  final double? sequence;

  const FieldCheckbox({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue, this.sequence});
}

class FieldSwitch {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // bool
  final List<String>? validators;
  final dynamic initialValue;
  final double? sequence;

  const FieldSwitch({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue, this.sequence});
}

class FieldRadioGroup {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // bool
  final List<String>? options;
  final dynamic initialValue;
  final double? sequence;

  const FieldRadioGroup({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.options, this.initialValue, this.sequence});
}

class FieldDropdown {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // enum, text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<Map<String, dynamic>>? options;
  final dynamic initialValue;
  final double? sequence;

  const FieldDropdown({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.options, this.initialValue, this.sequence});
}

class FieldImagePicker {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // enum, text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<Map<String, dynamic>>? options;
  final dynamic initialValue;
  final double? sequence;
  final bool? multiple;
  final bool? camera;
  final bool? gallery;
  final bool? network;
  final String? url;

  const FieldImagePicker(
      {this.label,
      this.hint,
      this.enabled,
      this.inputDecoration,
      this.type,
      this.options,
      this.initialValue,
      this.sequence,
      this.multiple,
      this.camera,
      this.gallery,
      this.network,
      this.url});
}

//*****************************
//  Nested field
//*****************************/

class FieldClass {
  final List<Map<String, dynamic>>? properties; // {annotation, type, label, hint, enabled, inputDecoration, validators, initialValue}
  final String? label;
  final String? hint;
  final double? sequence;
  const FieldClass({this.properties, this.label, this.hint, this.sequence});
}

// annotations table to generate type checkers
final annotations = <String, Type>{
  'FieldText': FieldText,
  'FieldTextArea': FieldTextArea,
  'FieldFilterChip': FieldFilterChip,
  'FieldChoiceChip': FieldChoiceChip,
  'FieldDateTimePicker': FieldDateTimePicker,
  'FieldDateRangePicker': FieldDateRangePicker,
  'FieldRangeSlider': FieldRangeSlider,
  'FieldCheckbox': FieldCheckbox,
  'FieldSwitch': FieldSwitch,
  'FieldRadioGroup': FieldRadioGroup,
  'FieldDropdown': FieldDropdown,
  'FieldImagePicker': FieldImagePicker,
  'FieldClass': FieldClass,
};
