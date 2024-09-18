import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: const Column(
          children: [
            Text('これはサンプルのダイアログです。'),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: const Text('閉じる'),
          onPressed: () {
            // ダイアログを閉じる（特定の値を返す）
            Navigator.of(context).pop('Button Closed');
          },
        ),
      ],
    );
  }
}
