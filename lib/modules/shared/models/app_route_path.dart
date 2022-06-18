import 'package:darius_calugar/modules/home/home.dart';
import 'package:flutter/cupertino.dart';

@immutable
class AppRoutePath {
  final int? projectId;
  final HomeSection? homeSection;

  const AppRoutePath.home()
      : projectId = null,
        homeSection = HomeSection.display;

  const AppRoutePath.project(this.projectId) : homeSection = null;

  const AppRoutePath.unknown()
      : homeSection = null,
        projectId = null;

  bool get isHome => projectId == null && homeSection != null;

  bool get isProject => projectId != null && homeSection == null;

  bool get isUnknown => !isHome || !isProject;
}
