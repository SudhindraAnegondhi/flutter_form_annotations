# Flutter Form Generator

## Flutter Form Annotations

Defines the annotations used by [**Flutter Form Generator**]() for Fluttr Form creation for any Dart Model Class.


See the [example]() to understand how to configure your model for Form Generation. 

Please note the model class should include  ```toJson```  (returning a map of the instance), and ```fromJson``` (returning an instance of the model from a map).

You may also chose to use either 
-  the [json_serializable](https://pub.dev/packages/json_serializable) decorator, in which case  you would need to import [json_annotations](https://pub.dev/packages/json_annotation) package, as well. OR
-  Use the [freezed](https://pub.dev/packages/freezed) package, or any other package that generates the required ```toJson``` and ```fromJson``` class methods.
  
The example uses **json_serializable** package.

### Usage

Given a library ```profile.dart``` with a ```Profile``` class annotated  with ```FormBuilder```

```dart
import 'package:flutter_form_annotations/flutter_form_annotations.dart';

part 'person.g.dart';

class Address {
    final String? street, city, postCode, state, country;

    const Address({this.street, this.city, this.postCode, this.state, this.country});

    Map<String, dynamic> toMap() =>  {
        "street": street,
        "city": city,
    }
}

@FormBuilder(
    needSacffold: true,
)
class Person {
    final String firstName;
    final String lastName;
    final String dateOfBirth;
    final String 
    final Address address;

    const Person()
}

```

### Features and Bugs

Please file feature reuests and bugs @ [issue tracker]()