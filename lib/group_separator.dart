library group_separator;

import 'package:flutter/material.dart';

/// ### A widget that can be used to separate groups of widgets. <br>
/// This is basically how you can use this widget:
/// ```dart
/// GroupSeparator(
///  separatorText: Text('Or'),
/// separatorColor: Colors.black,
/// separatorThickness: 1,
/// separatorTextPosition: GroupSeparatorTextPosition.center,
/// );
/// ```
/// - The above code will create a separator with the text 'Or' in the center.
/// - The separator will have a thickness of 1 and the color will be black.
/// - The separator can be positioned to the left or right of the text.
/// - The default position is center.
///
class GroupSeparator extends StatelessWidget {
  /// #### The text to be displayed in the separator. <br>
  /// - This is typically a Text widget.
  /// - It is required and cannot be null.
  ///
  final Text separatorText;

  /// #### The color of the separator.
  /// - This is optional and defaults to black.
  /// - It can be any color.
  ///
  final Color separatorColor;

  /// #### The thickness of the separator.
  /// - This is optional and defaults to 1.0.
  /// - It should not be more than 10.0.
  ///
  final double separatorThickness;

  /// #### The position of the separator text.
  /// - This is optional and defaults to center.
  /// - It can be either left, right or center.
  ///
  final GroupSeparatorTextPosition separatorTextPosition;

  const GroupSeparator(
      {super.key,
      required this.separatorText,
      this.separatorColor = Colors.black,
      this.separatorThickness = 1.0,
      this.separatorTextPosition = GroupSeparatorTextPosition.center});

  @override
  Widget build(BuildContext context) {
    switch (separatorTextPosition) {
      case GroupSeparatorTextPosition.center:
        return _buildCenterSeparator();
      case GroupSeparatorTextPosition.left:
        return _buildLeftSeparator();
      case GroupSeparatorTextPosition.right:
        return _buildRightSeparator();
    }
  }

  _buildLeftSeparator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        separatorText,
        const SizedBox(
          width: 4,
        ),
        Expanded(
            child: Divider(
          color: separatorColor,
          thickness: separatorThickness,
        )),
      ],
    );
  }

  _buildRightSeparator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Divider(
          color: separatorColor,
          thickness: separatorThickness,
        )),
        const SizedBox(
          width: 4,
        ),
        separatorText,
      ],
    );
  }

  _buildCenterSeparator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: separatorColor,
            thickness: separatorThickness,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        separatorText,
        const SizedBox(
          width: 4,
        ),
        Expanded(
            child: Divider(
          color: separatorColor,
          thickness: separatorThickness,
        )),
      ],
    );
  }
}

enum GroupSeparatorTextPosition { center, left, right }
