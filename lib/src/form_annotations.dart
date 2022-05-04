// ignore_for_file: omit_local_variable_types
// ignore_for_file: lines_longer_than_80_chars

class FormBuilder {
  const FormBuilder({
    this.allowNullorEmpty = false,
    this.needScaffold = true,
  });
  final bool allowNullorEmpty;
  final bool needScaffold;
}

class FormGenerator {
  const FormGenerator({
    this.allowNullorEmpty = false,
    this.needScaffold = true,
  });
  final bool allowNullorEmpty;
  final bool needScaffold;
}

class FieldBuilder {
  final String? formFieldType;
  final String? type;
  final bool? readOnly;
  final dynamic? defaultValue;
  final Map<String, dynamic>? inputDecoration;
  final bool? hide; // false
  final List<Map<String, dynamic>>? choices;
  final double? sequence;
  final List<Map<String, dynamic>>? validators;

  const FieldBuilder({
    this.formFieldType = 'text',
    this.type = 'String',
    this.readOnly = false,
    this.defaultValue,
    this.inputDecoration,
    this.hide = false,
    this.choices,
    this.sequence,
    this.validators,
  });
}

class FieldText {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<Map<String, String>>? validators;
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
  final List<Map<String, String>>? validators;
  final dynamic initialValue;
  final double? sequence;

  const FieldTextArea({this.label, this.maxLines, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue, this.sequence});
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

/// The range type in the model shoud be a string
/// with ranges  date (iso strings) delimited by comma.
class FieldDateTimePicker {
  final bool? autofocus; //
  final String? errorFormatText; // 'Invalid date format'
  final String? errorInvalidText; // 'Invalid date'
  final String? fieldHintText; // 'Date'
  final String? fieldLabelText; // 'Date'
  final String? selectableDayPredicate;
  final String? firstDate; // DateTime.toIso8601String()
  final String? lastDate; // DateTime.toIso8601String()
  final String? initialDateRange; // DateTime.toIso8601String(), DateTime.toIso8601String()

  const FieldDateTimePicker(
      {this.autofocus,
      this.errorFormatText,
      this.errorInvalidText,
      this.fieldHintText,
      this.fieldLabelText,
      this.selectableDayPredicate,
      this.firstDate,
      this.lastDate,
      this.initialDateRange});
}

class FieldDateRangePicker {
  final String? label;
  final String? helpText; // 'Select a date range'
  final String? cancelText; // 'Cancel'
  final String? confirmText; // 'Confirm'
  final String? saveText; // 'Save'
  final String? errorFormatText; // 'Invalid date format'
  final String? errorInvalidText; // 'Invalid date'
  final String? errorInvalidRangeText; // 'Invalid date range'
  final String? fieldStartHintText; // 'Start date'
  final String? fieldEndHintText; // 'End date'
  final String? fieldStartLabelText; // 'Start date'
  final String? fieldEndLabelText; // 'End date'
  final String? locale; // Locale
  final Map<String, dynamic>? routeSettings; // Class RouteSettings
  final String? textDirection; // TextDirection.ltr
  final String? firstDate; // DateTime.toIso8601String()
  final String? lastDate; // DateTime.toIso8601String()
  final String? initialDateRange; // DateTime.toIso8601String(), DateTime.toIso8601String()

  const FieldDateRangePicker(
      {this.label,
      this.helpText,
      this.cancelText,
      this.confirmText,
      this.saveText,
      this.errorFormatText,
      this.errorInvalidText,
      this.errorInvalidRangeText,
      this.fieldStartHintText,
      this.fieldEndHintText,
      this.fieldStartLabelText,
      this.fieldEndLabelText,
      this.locale,
      this.routeSettings,
      this.textDirection,
      this.firstDate,
      this.lastDate,
      this.initialDateRange});
}

class FieldChoiceChip {
  final bool? autofocus;
  final String? avatar; // widget
  final String? avatarBorder; // ShapeBorder
  final String? backgroundColor; // Colors.white
  final String? clipBehavior; // Clip.none
  final String? disabledColor; // Colors.grey.shade400
  final double? elevation; // 0
  final String? focusNode; // FocusNode()
  final bool? isEnabled; // true
  final String? label; // widget
  final String? labelPadding; // EdgeInsets.symmetric(horizontal: 8.0)
  final String? labelStyle; // TextStyle(color: Colors.grey.shade700)
  final String? materialTapTargetSize; // MaterialTapTargetSize.shrinkWrap
  final String? onSelected; // (bool value) {}
  final String? padding; // EdgeInsets.all(4.0)
  final double? pressElevation; // 0
  final bool? selected; // false
  final String? selectedColor; // Colors.blue.shade100
  final String? selectedShadowColor; // Colors.blue.shade100
  final double sequence;
  final String? shadowColor; // Colors.blue.shade100
  final String? shape; // RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))
  final String? side; //BorderSide(color: Colors.grey.shade400, width: 1.0)
  final String? tooltip; // null
  final String? visulalDensity;

  FieldChoiceChip(
    this.autofocus,
    this.avatar,
    this.avatarBorder,
    this.backgroundColor,
    this.clipBehavior,
    this.disabledColor,
    this.elevation,
    this.focusNode,
    this.isEnabled,
    this.label,
    this.labelPadding,
    this.labelStyle,
    this.materialTapTargetSize,
    this.onSelected,
    this.padding,
    this.pressElevation,
    this.selected,
    this.selectedColor,
    this.selectedShadowColor,
    this.sequence,
    this.shadowColor,
    this.shape,
    this.side,
    this.tooltip,
    this.visulalDensity,
  ); // VisualDensity.adaptivePlatformDensity

}

class FieldRadio {
  final String? type; // type
  final String? activeColor;
  final bool? autofocus;
  final String? fillColor, focusColor, focusNode, groupValue, hoverColor, materialTapTargetSize, mouseCursor, onChanged, overlayColor;
  final double? splashRadius;
  final bool? toggleable;
  final String? value, visualDensity;

  FieldRadio(this.type, this.activeColor, this.autofocus, this.fillColor, this.focusColor, this.focusNode, this.groupValue, this.hoverColor,
      this.materialTapTargetSize, this.mouseCursor, this.onChanged, this.overlayColor, this.splashRadius, this.toggleable, this.value, this.visualDensity);
}

class FieldRangeSlider {
  final String? activeColor;
  final int? divisions;
  final String? inactiveColor;
  final String? labels; // comma separated labels
  final int? max, min;
  final String? onChanged, OnChangeStart, OnChangeEnd;
  final int? startValue, endValue;

  const FieldRangeSlider(
      {this.activeColor,
      this.divisions,
      this.inactiveColor,
      this.labels,
      this.max,
      this.min,
      this.onChanged,
      this.OnChangeStart,
      this.OnChangeEnd,
      this.startValue,
      this.endValue});
}

class FieldSlider {
  final String? activeColor;
  final bool? autoFocus;
  final int? divisions;
  final String? focusNode;
  final String? inactiveColor;
  final String? label;
  final int? max, min;
  final String? mouseCursor, onChanged, OnChangeStart, OnChangeEnd;
  final double? value;
  final Map<String, dynamic>? sliderTheme;

  FieldSlider(
      {this.activeColor,
      this.autoFocus,
      this.divisions,
      this.focusNode,
      this.inactiveColor,
      this.label,
      this.max,
      this.min,
      this.mouseCursor,
      this.onChanged,
      this.OnChangeStart,
      this.OnChangeEnd,
      this.value,
      this.sliderTheme});
}

class FieldCheckbox {
  final String? label;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // bool
  final List<Map<String, String>>? validators;
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
  final dynamic initialValue;
  final double? sequence;
  final String? icon;
  final int? iconSize;
  final String? iconTooltip;
  final String? iconTooltipPosition;
  final String? iconColor, colorActive, colorHover, colorDisabled, colorFocus, colorError;

  const FieldSwitch({
    this.label,
    this.hint,
    this.enabled,
    this.inputDecoration,
    this.type,
    this.initialValue,
    this.sequence,
    this.icon, // 'check_box_outline_blank', 'check_box', 'indeterminate_check_box', 'radio_button_unchecked', 'radio_button_checked', 'indeterminate_radio_button'
    this.iconSize,
    this.iconTooltip,
    this.iconTooltipPosition,
    this.iconColor,
    this.colorActive,
    this.colorHover,
    this.colorDisabled,
    this.colorFocus,
    this.colorError,
  });
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
  'FieldRadio': FieldRadio,
  'FieldDropdown': FieldDropdown,
  'FieldClass': FieldClass,
};
