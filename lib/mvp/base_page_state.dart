

import 'package:flutter/material.dart';
import 'package:test_dialog/mvp/contract.dart';
import 'package:test_dialog/utils/app_navigator.dart';
import 'package:test_dialog/utils/toast_utils.dart';
import 'package:test_dialog/utils/utils.dart';
import 'package:test_dialog/widget/progress_dialog.dart';

import 'base_page_presenter.dart';


abstract class BasePageState<T extends StatefulWidget, V extends BasePagePresenter> extends State<T> implements IMvpView {

  V presenter;

  BasePageState() {
    presenter = createPresenter();
    presenter.view = this;
  }

  V createPresenter();

  @override
  void closeProgress() {
    print("DEBUG->关闭dialog");
    if (mounted && _isShowDialog){
      _isShowDialog = false;
      AppNavigator.back(context);
    }
  }

  bool _isShowDialog = false;

  @override
  void showProgress() {
    /// 避免重复弹出
    print("DEBUG->开启dialog");
    if (mounted && !_isShowDialog){
      _isShowDialog = true;
      try{
        showTransparentDialog(
            context: context,
            barrierDismissible: false,
            builder:(_) {
              return WillPopScope(
                onWillPop: () async {
                  // 拦截到返回键，证明dialog被手动关闭
                  _isShowDialog = false;
                  return Future.value(true);
                },
                child: ProgressDialog(hintText: "正在加载..."),
              );
            }
        );
      }catch(e){
        /// 异常原因主要是页面没有build完成就调用Progress。
        print(e);
      }
    }
  }

  @override
  void showToast(String string) {
    ToastUtils.show(string);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    presenter?.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    presenter?.dispose();
  }

  @override
  void deactivate() {
    super.deactivate();
    presenter?.deactivate();
  }

  @override
  void didUpdateWidget(T oldWidget) {
    super.didUpdateWidget(oldWidget);
    didUpdateWidgets<T>(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    presenter?.initState();
  }

  void didUpdateWidgets<W>(W oldWidget) {
    presenter?.didUpdateWidgets<W>(oldWidget);
  }
}