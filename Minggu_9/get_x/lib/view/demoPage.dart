import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/demoController.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Text(Get.arguments),
          ),
          SwitchListTile(
            value: ctrl.isDark,
            title: Text("Touch to change ThemeMode"),
            onChanged: ctrl.changeTheme,
          ),
          ElevatedButton(
              onPressed: () => Get.snackbar(
                  'Snackbar', 'Hello! This is the Snackbar message',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Color(0xFF404040)),
              child: Text('Snackbar')),
          ElevatedButton(
              onPressed: () => Get.defaultDialog(
                  title: "Dialogue", content: Text("Hey, From Dialogue")),
              child: Text('Dialogue')),
          ElevatedButton(
              onPressed: () => Get.bottomSheet(Container(
                    height: 160,
                    color: Color(0xFFFEFEFE),
                    child: Text(
                      "Hello, From Bottom Sheet",
                      style: TextStyle(fontSize: 30),
                    ),
                  )),
              child: Text('Bottom Sheet')),
          ElevatedButton(
              onPressed: () => Get.offNamed('/'),
              child: Text('Back to Home')),
        ],
      )
      ),
    );
  }
}
