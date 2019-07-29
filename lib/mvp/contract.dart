

import 'package:test_dialog/mvp/ilife_cycle.dart';

abstract class IMvpView {
  /// 显示Progress
  void showProgress();

  /// 关闭Progress
  void closeProgress();

  /// 展示Toast
  void showToast(String string);
}

abstract class IPresenter extends ILifeCycle {}
