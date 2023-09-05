import "package:dialog_boxes/dialog_boxes.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Dialog Boxes",
      home: DialogBoxDemo(),
    );
  }
}

class DialogBoxDemo extends StatelessWidget {
  const DialogBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Boxes"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CustomIconDialog(
                      dialogType: DialogType.alert,
                      title: "Alert Dialog Example",
                      content: "Do you want to close Application.",
                      onConfirm: () {
                        // do some thing...
                      },
                    );
                  },
                );
              },
              child: const Text("Alert Dialog...!!!"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CustomIconDialog(
                      dialogType: DialogType.confirmation,
                      title: "Conformation Dialog Example",
                      content: "Do you want to close Application.",
                      onConfirm: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const CustomIconDialog(
                              dialogType: DialogType.alert,
                              title: "",
                              content: "Sure...!!",
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
              child: const Text("Conformation Dialog...!!!"),
            ),
          ],
        ),
      ),
    );
  }
}
