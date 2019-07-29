
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:test_dialog/mvp/base_page_state.dart';
import 'package:test_dialog/mvp/presenter/login_presenter.dart';
import 'package:test_dialog/page/index.dart';
import 'package:test_dialog/utils/app_navigator.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends BasePageState<Login,LoginPresenter> {
  //定义一个controller
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();
  bool _isClick = false;

  @override
  void initState() {
    super.initState();
    //监听输入改变  
//    _nameController.addListener(_verify);
//    _passwordController.addListener(_verify);
//    _nameController.text = FlutterStars.SpUtil.getString(PrefKey.phone);
  }

//  void _verify(){
//    String name = _nameController.text;
//    String password = _passwordController.text;
//    bool isClick = true;
//    if (name.isEmpty || name.length < 11) {
//      isClick = false;
//    }
//    if (password.isEmpty || password.length < 6) {
//      isClick = false;
//    }
//
//    /// 状态不一样在刷新，避免重复不必要的setState
//    if (isClick != _isClick){
//      setState(() {
//        _isClick = isClick;
//      });
//    }
//  }
  
  void _login(){
//    FlutterStars.SpUtil.putString(PrefKey.phone, _nameController.text);
    presenter.requestLogin((data){
      AppNavigator.push(context, Index());
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录测试页"),
      ),
      body: defaultTargetPlatform == TargetPlatform.iOS ? FormKeyboardActions(
        child: _buildBody(),
      ) : SingleChildScrollView(
        child: _buildBody(),
      ) 
    );
  }
  
  _buildBody(){
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "密码登录",
          ),
          FlatButton(
            onPressed: (){
              _login();
            },
            child: Text("登录"),
          ),
        ],
      ),
    );
  }

  @override
  LoginPresenter createPresenter() {
    return LoginPresenter();
  }
}
