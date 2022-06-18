import 'package:darius_calugar/modules/home/models/home_scroll_hash.dart';
import 'package:flutter/material.dart';

@immutable
class HomeRouteArguments {
  final HomeSection scrollHash;

  const HomeRouteArguments({
    required this.scrollHash,
  });
}
