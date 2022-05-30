# Form Gen

## Flutter Form Annotations

Defines the annotations used by [**Form Gen**](https://pub.dev/packages/form_gen) for generating Add/Edit forms for any model class.

## Usage

In order to generate the code for a Form, you will need.

1. A model class - serialization of the model may be implemented using any of the serialization generators available, for example, you may also chose to use
-  the [json_serializable](https://pub.dev/packages/json_serializable) package, in which case  you would need to import [json_annotations](https://pub.dev/packages/json_annotation) package, as well. OR
-  Use the [freezed](https://pub.dev/packages/freezed) package, or any other package that generates the required ```toJson``` and ```fromJson``` class methods.

2. Edit `pubspec.yaml`, import  latest [Flutter Form Annotations](https://pub.dev/packages/flutter_form_annotations) as a **dependency**, as dev dependency, import [build_runner](https://pub.dev/packages/build_runner), [form_gen](https://pub.dev/packages/form_gen).
   
3. Edit the model class as shown in the [example](), run the following command from the terminal, to generate the form code. Edit the class, correct the errors shown(if any), re-run the build step as many times as needed until there are no more errors.

```sh
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Views

[Main View]()


Given a library ```profile.dart``` with a ```Profile``` class annotated  with ```FormBuilder```

```dart


```

## Features and Bugs

## TODO:

Currently the form is generated in random order - mostly in the order they are defined in the model.


Please file feature reuests and bugs @ [issue tracker]()