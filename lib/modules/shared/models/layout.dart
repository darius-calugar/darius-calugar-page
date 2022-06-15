import 'package:flutter/material.dart';

@immutable
class Layout {
  // ignore: unused_field
  final int _id;

  const Layout._(this._id);

  static Layout get landscape => const Layout._(0);

  static Layout get square => const Layout._(1);

  static Layout get portrait => const Layout._(2);

  List<Layout> get values => [
        Layout.landscape,
        Layout.square,
        Layout.portrait,
      ];

  bool get isLandscape => this == Layout.landscape;

  bool get isSquare => this == Layout.square;

  bool get isPortrait => this == Layout.portrait;

  static Layout of(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    if (mediaQuery.size.width > 1000) {
      return Layout.landscape;
    } else if (mediaQuery.size.width < 600) {
      return Layout.portrait;
    } else {
      return Layout.square;
    }
  }

  @override
  operator ==(Object other) =>
      identical(this, other) || other is Layout && runtimeType == other.runtimeType && _id == other._id;

  @override
  int get hashCode => _id.hashCode;
}
