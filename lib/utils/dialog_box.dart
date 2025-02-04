import 'package:flutter/material.dart';
import 'button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            style: const TextStyle(color: Colors.black),
            autofocus: true,
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              hintText: 'Add a new task',
            ),
          ),
          SizedBox(height: 12),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Button(text: 'Cancel', onPressed: onCancel),
            const SizedBox(width: 10),
            Button(text: 'Save', onPressed: onSave),
          ])
        ],
      ),
    );
  }
}
