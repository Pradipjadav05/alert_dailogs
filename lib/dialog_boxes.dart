library dialog_boxes;

import 'package:flutter/material.dart';

enum DialogType { alert, warning, confirmation }

class CustomIconDialog extends StatelessWidget {
  final DialogType dialogType;
  final String title;
  final String content;
  final VoidCallback? onConfirm;

  const CustomIconDialog(
      {Key? key,
      required this.dialogType,
      required this.title,
      required this.content,
      this.onConfirm})
      : super(key: key);

  IconData _getIcon() {
    switch (dialogType) {
      case DialogType.alert:
        return Icons.warning;
      case DialogType.warning:
        return Icons.error;
      case DialogType.confirmation:
        return Icons.question_answer;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: <Widget>[
          Icon(_getIcon()),
          const SizedBox(width: 8), // Adjust the spacing as needed
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onConfirm?.call();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
