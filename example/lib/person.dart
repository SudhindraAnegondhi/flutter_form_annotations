/*
library person;

import 'dart:convert';
import 'package:flutter_form_annotations/flutter_form_annotations.dart' show FormGenerator, FormFieldType, FieldBuilder;
import 'package:json_annotation/json_annotation.dart';

import 'profile.dart' show Address, ProfileType;

part 'person.g.dart';

@FormGenerator(
  needScaffold: true
)
@JsonSerializable()
class Person {
  final String? firstName;
  final String? lastName;
  final ProfileType? profileType;
  final String? email;
  final String? phone;
  final Address? address;

  Person(this.firstName, this.lastName, this.profileType, this.email, this.phone, this.address);

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

} @override
  String toString() => json.encode(toJson());
}

Map<String, dynamic> _addressToJson(Address address) => address.toJson();
Address _addressFromJson(Map<String, dynamic> json) => Address.fromJson(json);
*/