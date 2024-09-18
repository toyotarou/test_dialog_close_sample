// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Future<void> MoneyDialog({
  required BuildContext context,
  required Widget widget,
  double paddingTop = 0,
  double paddingRight = 0,
  double paddingBottom = 0,
  double paddingLeft = 0,
  bool clearBarrierColor = false,
  bool afterOperation = false,
}) {
  return showDialog(
    context: context,
    barrierColor: clearBarrierColor
        ? Colors.transparent
        : Colors.blueGrey.withOpacity(0.3),
    builder: (_) {
      return Container(
        padding: EdgeInsets.only(
            top: paddingTop,
            right: paddingRight,
            bottom: paddingBottom,
            left: paddingLeft),
        child: Dialog(
          backgroundColor: Colors.blueGrey.withOpacity(0.3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          insetPadding: const EdgeInsets.all(30),
          child: widget,
        ),
      );
    },
  ).then((result) {
    if (afterOperation) {
      // ダイアログが閉じられた後の処理
      if (result == null) {
        // barrier がタップされて閉じられた場合の処理
        print('Barrier was tapped!');

        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('barrierをタップして閉じられました。')),
        );
      } else {
        // ボタンが押されたときの処理
        print(result);

        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('ダイアログが閉じられました: $result')),
        );
      }
    }
  });
}
