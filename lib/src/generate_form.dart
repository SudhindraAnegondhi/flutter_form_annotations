// ignore_for_file: lines_longer_than_80_chars

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

//*****************************
//  property  definitions
//*****************************/
final Map<String, Type> $properties = {
  'label': String,
  'hint': String,
  'enabled': bool,
  'inputDecorator': Map<String, dynamic>,
  'type': String,
  'validators': List<String>,
  'initialValue': String,
  'options': List<String>,
  'sequence': int,
  'properties': List<Map<String, dynamic>>,
};

class FieldText {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<String>? validators;
  final dynamic initialValue;

  const FieldText({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue});
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

  const FieldTextArea({this.label, this.maxLines, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue});
}

class FieldFilterChip {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<String>? options;
  final dynamic initialValue;

  const FieldFilterChip({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.options, this.initialValue});
}

class FieldChoiceChip {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<String>? options;
  final dynamic initialValue;

  const FieldChoiceChip({
    this.label,
    this.hint,
    this.enabled,
    this.inputDecoration,
    this.type,
    this.options,
    this.initialValue,
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

  const FieldDateRangePicker({this.label, this.hint, this.enabled, this.inputDecoration, this.type});
}

class FieldRangeSlider {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color

  const FieldRangeSlider({this.label, this.hint, this.enabled, this.inputDecoration, this.type});
}

class FieldCheckbox {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // bool
  final List<String>? validators;

  const FieldCheckbox({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.validators});
}

class FieldSwitch {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // bool
  final List<String>? validators;

  const FieldSwitch({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.validators});
}

class FieldRadioGroup {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // bool
  final List<String>? options;
  final dynamic initialValue;

  const FieldRadioGroup({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.options, this.initialValue});
}

class FieldDropdown {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // enum, text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<Map<String, dynamic>? options;
  const FieldDropdown({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.options});
}

//*****************************
//  Nested field
//*****************************/

class FieldClass {
  final List<Map<String, dynamic>>? properties; // {annotation, type, label, hint, enabled, inputDecoration, validators, initialValue}

  const FieldClass({this.properties});
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
};
