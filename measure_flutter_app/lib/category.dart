// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart

  final String _name;
  final IconData _icon;
  final Color _color;

  const Category(this._icon, this._color, this._name);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
      child:
      Container(//color: Colors.green,
      height: 100.0,
      padding: EdgeInsets.all(8.0),
      child: InkWell(borderRadius: BorderRadius.circular(50.0),
        child:
      Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(_icon,size: 60,),
          ),
          Center(child:Text(_name, style: new TextStyle(fontSize: 24.0),)),
        ],
      ),onTap: () {
        print("it's tapped!");
      },splashColor: _color,highlightColor: _color,),
    ),);
  }
}
