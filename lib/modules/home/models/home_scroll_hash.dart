import 'package:flutter/material.dart';

@immutable
class HomeSection {
  // ignore: unused_field
  final String? _hash;

  const HomeSection._(this._hash);

  static const HomeSection display = HomeSection._('display');

  static const HomeSection projects = HomeSection._('projects');

  static const HomeSection about = HomeSection._('about');

  static List<HomeSection> get values => [
        display,
        projects,
        about,
      ];
}
