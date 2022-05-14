// ignore_for_file: omit_local_variable_types
// ignore_for_file: lines_longer_than_80_chars
import 'form_validator.dart' show FieldValidator;

class FieldCheckbox {
  /// Optional label.
  final String? label;

  /// Optional hint.
  final String? hint;

  /// Field enabled. Default is 'true'.
  final bool? enabled;
  //// Input Decoration. With same propertes as InputDecoration
  /// specified as a source map:
  /// {
  ///  'labelText': 'Label',
  ///  'hintText': 'Hint',
  ///   suffixIcon: 'Icon(Icons.arrow_drop_down'),
  /// } ** Note the values are quoted.
  final Map<String, dynamic>? inputDecoration;

  final String? type; //// Type of the field.
  /// Validation rules.
  /// [
  ///  { FieldValidator.required: {'message': 'Fill this or else} },
  ///  { FieldValidator.minLength: {'length': 5, 'message': 'Too short'} },
  ///  {'FieldValidator.custom': {'function': 'String? custom(value, required int length) => value.length < 5 ? "Too
  ///   short" : null}, 'length': 5, } },
  /// ]
  /// Note: The validator is a list of maps.
  /// You may specify multiple validators and multiple custom validators. Please note
  /// that each custom validator function must return null if the value is valid else a string
  /// and is named custom.
  final List<Map<FieldValidator, dynamic>>? validators;

  /// The default value of the field.
  final dynamic initialValue;

  /// The sequence of presentation of the field in the form
  final double? sequence;

  const FieldCheckbox({this.label, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue, this.sequence});
}

class FieldChoiceChip {
  /// Optional. default is 'false'
  final bool? autofocus;
  /// widget for avatar within quotes
  final String? avatar; // widget
  /// Border around avatar
  /// ShapeBorder, within quotes
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
    /// Boolean value.
    this.autofocus,
    /// Widget to display as the avatar.
    /// specified within quotes.
    this.avatar,
    /// Border to draw around the avatar.
    /// ex: 'BoxBorder.all(width: 2.0, color: Colors.grey.shade400)'
    this.avatarBorder,
    /// Background color of the chip.
    /// specified within quotes.
    this.backgroundColor,
    /// How to clip the chip's content.
    /// ex:'Clip.none'
    this.clipBehavior,
    this.disabledColor,
    /// integer value
    /// ex: 5
    this.elevation,
    this.focusNode,
    /// Boolean value. Default is 'true'.
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

/// @FieldDatePicker() decorator. Use this with DateTime fields to input dates.
/// All properties are optional.
/// [initialDate] is set to current date if not provided.
/// [firstDate] is set to  current date if not provided.
/// [lastDate] is set to firstDate if provided else  current date if not provided.
class FieldDatePicker {
  final bool? autofocus; //
  final String? errorFormatText; // 'Invalid date format'
  final String? errorInvalidText; // 'Invalid date'
  final String? fieldHintText; // 'Date'
  final String? fieldLabelText; // 'Date'
  final String? selectableDayPredicate;
  final String? firstDate; // DateTime.toIso8601String()
  final String? lastDate; // DateTime.toIso8601String()
  final String? initialDate; // DateTime.toIso8601String()
  const FieldDatePicker(
      {this.autofocus,
      this.errorFormatText,
      this.errorInvalidText,
      this.fieldHintText,
      this.fieldLabelText,
      this.selectableDayPredicate,
      this.firstDate,
      this.lastDate,
      this.initialDate});
}

/// @FieldDateRangePicker() allows picking a range of dates
/// All properties are optional. All dates are 'yyyy-MM-dd'
/// [initialDate] is set to current date if not provided.
/// [firstDate] is set to 25 years before current date if not provided.
/// [lastDate] is set to 25 years after current date if not provided.
/// [initialDateRange] ia string in "yyyy-MM-dd, yyyy-MM-dd" format specifies the initial date range.
/// if not provided it is set to "[firstDate], [lastDate]""
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

/// @FieldText() decorator is used to decorate each Text, Number, Email, password or Phone
/// field in the form.
/// All properties are optional.
class FieldText {
  final String? label;
  final String? hint;
  final bool? enabled;
  final bool? readOnly;

  /// true for password field
  final bool? obscureText;

  /// [inputDecoration] map of properties tto decorate the field.
  /// for example {
  ///   'labelText': 'Label Text',
  ///   'hintText': 'Hint Text',
  ///   'errorText': 'Error Text',
  ///   'suffixIcon': Icon(Icons.search),
  ///   'border: OutlineInputBorder(),
  /// }
  final Map<String, dynamic>? inputDecoration;

  /// [type] Default is 'text', can be 'number', 'email', 'password', 'phone'
  final String? type;

  /// Several predefined validators can be used to validate the field.
  /// For example, [required] , [email]  please see the validators reference
  /// If you want to use your own validator, you can use [custom] type
  /// and add your own validator function. The function must return a null
  /// if the field is valid or a string with the error message if the field is invalid.
  final List<Map<FieldValidator, dynamic>>? validators;

  /// Default value of the field
  final dynamic initialValue;

  /// The sequence of the field in the form.
  /// If no sequence is provided, no specific order will be applied to the fields.
  final double? sequence;

  const FieldText(
      {this.label,
      this.hint,
      this.enabled,
      this.readOnly,
      this.obscureText,
      this.inputDecoration,
      this.type,
      this.validators,
      this.initialValue,
      this.sequence});
}

/// @FieldTextArea() decorator is used to decorate each TextArea field in the form.
/// All properties are optional.
class FieldTextArea {
  final String? label;
  final int? maxLines;
  final String? hint;
  final bool? enabled;
  final Map<String, dynamic>? inputDecoration;
  final String? type; // text, number, email, password, phone, date, time, dateTime, dateTimeLocal, month, week, time, color
  final List<Map<FieldValidator, dynamic>>? validators;
  final dynamic initialValue;
  final double? sequence;

  const FieldTextArea({this.label, this.maxLines, this.hint, this.enabled, this.inputDecoration, this.type, this.validators, this.initialValue, this.sequence});
}

/// @FormBuilder is the decorator used to generate a form from a class.
/// [allowNullorEmpty] if set to true allows the form to save with empty or null values.
/// [needScaffold] if set to true will generate a scaffold with a form, otherwise the form will be generated
/// as a widget.

class FormBuilder {
  final bool allowNullorEmpty;
  final bool needScaffold;
  const FormBuilder({
    this.allowNullorEmpty = false,
    this.needScaffold = true,
  });
}
