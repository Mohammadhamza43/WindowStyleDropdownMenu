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
