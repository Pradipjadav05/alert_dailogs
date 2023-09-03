# alert_dailogs

A flutter widgets for different different dialogs.
## Features

 - show Alert Dialog with icons and button
 - show warning dialog with icons and button
 - show confirmation dialog with icons and button also conformation calback function.


## Getting started

To use this package, add alert_dailogs as a dependency in your pubspec.yaml file.

## Usage

Minimal example:

```dart
   showDialog(
    context: context,
    builder: (context) {
      return CustomIconDialog(
        dialogType: DialogType.alert,
        content: "Alert Dialog",
        title: "Warning",
        onConfirm: () {
          // some code...
        },
      );
    },
  );
```

Custom settings:

```dart
    showDialog(
      context: context,
      builder: (context) {
        return CustomIconDialog(
          dialogType: DialogType.alert,
          content: "Alert Dialog",
          title: "Warning",
          onConfirm: () {
            showDialog(
              context: context,
              builder: (context) {
                return const CustomIconDialog(
                  content: "Sure...!!",
                  dialogType: DialogType.alert,
                  title: 'Title',
                );
              },
            );
          },
        );
      },
    );
```

