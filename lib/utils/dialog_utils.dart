

import 'package:flutter/material.dart';
import 'package:test_dialog/widget/progress_dialog.dart';

class DialogUtils{

  //显示loading对话框
  static showLoadingDialog(BuildContext context,String content){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
        return ProgressDialog(hintText: content,);
      }
    );
  }

  //关闭loading对话框
  static dismissDialog(BuildContext context){
    Navigator.of(context,rootNavigator: true).pop();
  }
}