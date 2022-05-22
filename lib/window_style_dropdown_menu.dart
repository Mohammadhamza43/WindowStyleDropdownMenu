library window_style_dropdown_menu;

import 'package:flutter/material.dart';

/// Its is an statefull widget
class WindowStyleDropdownMenu extends StatefulWidget {
  /// Title for the dropdown
  ///
  /// Only accepts string value
  String buttonTitle;

  /// To Style the [buttonTitle] property
  ///
  /// Only accepts [TextStyle]
  TextStyle? buttonTitleStyle;

  /// To customise the dropdown menu with
  ///
  /// by default width is 200.0
  /// Only acceps [double] value
  double? dropdownWidth;

  /// Use to change the dropdown background color
  ///
  /// Only accepts [Color] class
  /// It's an optional field
  /// By default color is [grey]
  Color? dropdownBackgroundColor;

  /// Dropdown items to be shown in the menu
  ///
  /// expects list of [ListTile] class
  List<ListTile> dropdownItems;

  WindowStyleDropdownMenu(
      {Key? key,
      required this.buttonTitle,
      required this.dropdownItems,
      this.buttonTitleStyle,
      this.dropdownWidth,
      this.dropdownBackgroundColor})
      : super(key: key);

  @override
  State<WindowStyleDropdownMenu> createState() =>
      _WindowStyleDropdownMenuState();
}

class _WindowStyleDropdownMenuState extends State<WindowStyleDropdownMenu> {
  OverlayEntry? _overlayEntry;
  FocusNode textFocusNode = FocusNode();
  bool showOverlay = false;

  @override
  void initState() {
    super.initState();
    textFocusNode.addListener(() {
      if (textFocusNode.hasFocus) {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context)?.insert(_overlayEntry!);
        // _showOverlay(context, 0);
      } else {
        removeOverlay();
      }
    });
  }

  void removeOverlay() {
    _overlayEntry!.remove();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      focusNode: textFocusNode,
      onHover: (val) {
        if (val) {
          textFocusNode.requestFocus();
          showOverlay = true;
        }
      },
      onPressed: () {},
      child: Text(
        widget.buttonTitle,
        style: widget.buttonTitleStyle ?? const TextStyle(color: Colors.white),
      ),
    );
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
        maintainState: true,
        builder: (context) => Positioned(
              left: offset.dx,
              top: offset.dy + size.height,
              width: widget.dropdownWidth ?? 200,
              child: TextButton(
                onPressed: () {},
                onHover: (val) {
                  if (val && showOverlay) {
                    textFocusNode.requestFocus();
                  } else {
                    textFocusNode.unfocus();
                  }
                },
                child: Material(
                  color: widget.dropdownBackgroundColor ?? Colors.grey,
                  elevation: 4.0,
                  child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      children: widget.dropdownItems),
                ),
              ),
            ));
  }
}
