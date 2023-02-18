
<p align="center">
	<a href="https://pub.dev/packages/focus_detector"><img src="https://img.shields.io/pub/v/focus_detector.svg" alt="Pub.dev Badge"></a>
	<a href="https://github.com/tenhobi/effective_dart"><img src="https://img.shields.io/badge/style-effective_dart-40c4ff.svg" alt="Effective Dart Badge"></a>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License Badge"></a>
	<a href="https://github.com/baimamboukar/group_separator"><img src="https://img.shields.io/badge/platform-flutter-ff69b4.svg" alt="Flutter Platform Badge"></a>
</p>

# Group Separator
A widget that seperates a group of widgets using a Divider and a title.

## Usage
- Import the package:
```dart
import 'package:group_seperator/group_separator.dart';
```
- Use the widget:


```javascript

GroupSeparator(
separatorText: Text('Or'),
separatorColor: Colors.black,
separatorThickness: 1,
separatorTextPosition: GroupSeparatorTextPosition.center,
);

```
 - The above code will create a separator with the text 'Or' in the center.
 - The separator will have a thickness of 1 and the color will be black.
 - The separator can be positioned to the left or right of the text.
 - The default position is center.


## Attributes and their default values

### separatorText
 **The text to be displayed in the separator**. <br>
 - This is typically a Text widget.
 - It is required and cannot be null

### separatorColor
 **The color of the separator.**
 - This is optional and defaults to black.
 - It can be any color.


### separatorThickness
 **The thickness of the separator.**
 - This is optional and defaults to 1.0.
 - It should not be more than 10.0.


### separatorTextPosition
**The position of the separator text.**
 - This is optional and defaults to center.
 - It can be either left, right or center.
