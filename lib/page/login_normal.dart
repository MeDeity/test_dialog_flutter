import 'package:flutter/material.dart';
import 'package:test_dialog/mvp/base_page_state.dart';
import 'package:test_dialog/mvp/presenter/login_normal_presenter.dart';
import 'package:test_dialog/mvp/presenter/login_presenter.dart';
import 'package:test_dialog/page/index.dart';
import 'package:test_dialog/utils/app_navigator.dart';

class LoginNormal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginNormalState();
  }
}

class LoginNormalState extends BasePageState<LoginNormal, LoginNormalPresenter> {
  @override
  Widget build(BuildContext context) {
    return _buildContent();
  }

  void _login(){
//    FlutterStars.SpUtil.putString(PrefKey.phone, _nameController.text);
    presenter.requestLogin((data){
      AppNavigator.push(context, Index());
    });
  }

  Widget _buildContent() {
    return Scaffold(
      appBar: AppBar(
        title: Text("仿登录页面"),
      ),
      body: Column(
        children: <Widget>[
          Text("点击按钮执行登录请求->获取用户信息->跳转到Index页面"),
          FlatButton(
            onPressed: () {
              _login();
            },
            child: Text("模拟登录"),
          )
        ],
      ),
    );
  }

  @override
  LoginNormalPresenter createPresenter() {
    return LoginNormalPresenter();
  }
}
