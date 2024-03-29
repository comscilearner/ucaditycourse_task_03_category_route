// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// TODO: Check if we need to import anything
import 'category.dart';

// TODO: Define any constants
const IconData _icon = Icons.cake;
const EdgeInsets _listViewPadding = EdgeInsets.symmetric(horizontal: 8.0);
final Color _backgroundColor = Colors.green[100];
const double _appBarTitleFontSize = 30.0;
const double _appBarElevation = 0.0;

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.
    final categoryList = <Category>[];

    for (int i = 0; i < _categoryNames.length; i++) {
      categoryList.add(Category(
          name: _categoryNames[i], color: _baseColors[i], iconLocation: _icon));
    }

    // TODO: Create a list view of the Categories
    final listView = Container(
        color: _backgroundColor,
        child: ListView(
          padding: _listViewPadding,
          children: categoryList,
        ));

    // TODO: Create an App Bar
    final appBar = AppBar(
      centerTitle: true,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          fontSize: _appBarTitleFontSize,
          color: Colors.black,
        ),
      ),
      backgroundColor: _backgroundColor,
      elevation: _appBarElevation,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
