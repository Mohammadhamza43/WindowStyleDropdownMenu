<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
## Introduction

The package is inspired by window presentation form design toolbar. It will open the dropdown menu on hover, you can also use it where you want your dropdown to open when user hover there mouse, It will show and hide dropdown menu when mouse enter or leave the widget.

## Features

1. Show/hide dropdown menu on hover.
2. Customize your design with respect to you theme

Example

https://user-images.githubusercontent.com/26992726/169668343-0b7332dc-04fc-4b03-8a48-0046ae8f126f.mp4

![image](https://user-images.githubusercontent.com/26992726/169668224-8175ae0e-466e-419d-8fac-f27b496d7b24.png)

## Getting started

**1.** Install **window_style_dropdown_menu**:
```bash
flutter pub get window_style_dropdown_menu
```

**1.** Import **window_style_dropdown_menu** in your main.dart file:
```bash
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';
```

<!-- TODO: List prerequisites and provide or point to information on how to
start using the package. -->

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Window Style Dropdown Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Window Style Dropdown Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 1))),
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                WindowStyleDropdownMenu(
                  buttonTitleStyle: const TextStyle(color: Colors.black),
                  dropdownWidth: 300,
                  buttonTitle: 'File',
                  dropdownItems: const [
                    ListTile(
                      mouseCursor: SystemMouseCursors.click,
                      trailing: Text('Ctrl + O',
                          style: TextStyle(color: Colors.white)),
                      title: Text(
                        'Open',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      mouseCursor: SystemMouseCursors.click,
                      trailing: Text('Ctrl + N',
                          style: TextStyle(color: Colors.white)),
                      title: Text(
                        'New',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                const VerticalDivider(
                  width: 2,
                  thickness: 1,
                  color: Colors.white,
                ),
                WindowStyleDropdownMenu(
                  buttonTitleStyle: const TextStyle(color: Colors.black),
                  dropdownWidth: 300,
                  buttonTitle: 'Save',
                  dropdownItems: const [
                    ListTile(
                      mouseCursor: SystemMouseCursors.click,
                      trailing: Text('Ctrl + S',
                          style: TextStyle(color: Colors.white)),
                      title: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      mouseCursor: SystemMouseCursors.click,
                      trailing: Text('Ctrl + K + S',
                          style: TextStyle(color: Colors.white)),
                      title: Text(
                        'Save All',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                const VerticalDivider(
                  width: 2,
                  thickness: 1,
                  color: Colors.white,
                ),
                WindowStyleDropdownMenu(
                  buttonTitleStyle: const TextStyle(color: Colors.black),
                  dropdownWidth: 300,
                  buttonTitle: 'Settings',
                  dropdownItems: const [
                    ListTile(
                      mouseCursor: SystemMouseCursors.click,
                      trailing: Text('Ctrl + E',
                          style: TextStyle(color: Colors.white)),
                      title: Text(
                        'Extensions',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      mouseCursor: SystemMouseCursors.click,
                      trailing: Text('Ctrl + E',
                          style: TextStyle(color: Colors.white)),
                      title: Text(
                        'Editor Settings',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                const VerticalDivider(
                  width: 2,
                  thickness: 1,
                  color: Colors.white,
                ),
                WindowStyleDropdownMenu(
                  buttonTitleStyle: const TextStyle(color: Colors.black),
                  dropdownWidth: 300,
                  buttonTitle: 'Others',
                  dropdownItems: const [
                    ListTile(
                      mouseCursor: SystemMouseCursors.click,
                      trailing: Text('Ctrl + T',
                          style: TextStyle(color: Colors.white)),
                      title: Text(
                        'Tools',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      mouseCursor: SystemMouseCursors.click,
                      trailing: Text('Ctrl + Shift + P',
                          style: TextStyle(color: Colors.white)),
                      title: Text(
                        'Command Palette',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Expanded(
              child: Center(
            child: Text('Window Style Dropdown Menu'),
          ))
        ],
      ),
    );
  }
}
```

## Additional information
<!-- 
TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more. -->
