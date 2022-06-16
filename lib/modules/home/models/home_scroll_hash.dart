import 'package:flutter/material.dart';

@immutable
class HomeScrollHash {
  // ignore: unused_field
  final String? _hash;

  const HomeScrollHash._(this._hash);

  static const HomeScrollHash display = HomeScrollHash._('display');

  static const HomeScrollHash projects = HomeScrollHash._('projects');

  static const HomeScrollHash about = HomeScrollHash._('about');

  static List<HomeScrollHash> get values => [
        display,
        projects,
        about,
      ];
}
