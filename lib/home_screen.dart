import 'package:flutter/material.dart';
import 'package:test_dialog_close_sample/money_dialog.dart';
import 'package:test_dialog_close_sample/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            MoneyDialog(
              context: context,
              widget: const SecondScreen(),
              afterOperation: true,
            );
          },
          child: const Text('ダイアログを表示'),
        ),
      ),
    );
  }
}
