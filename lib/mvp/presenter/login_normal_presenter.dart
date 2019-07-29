import 'package:test_dialog/mvp/base_page_presenter.dart';
import 'package:test_dialog/net/api.dart';
import 'package:test_dialog/net/dio_utils.dart';
import 'package:test_dialog/net/entity/login_item_entity.dart';
import 'package:test_dialog/net/entity/user_detail_entity.dart';
import 'package:test_dialog/page/login_normal.dart';

class LoginNormalPresenter extends BasePagePresenter<LoginNormalState>{


  requestLogin(Function(UserDetailEntity data) callback) {
    requestNetwork<LoginItemEntity>(
      Method.post,
//      isShow: false,
      url: Api.user_login,
      onSuccess: (data){
        print("登录成功:$data");
        requestUserDetail(callback);
      },
    );
  }

  /// 接口请求例子
  /// get请求参数queryParameters  post请求参数params
  void requestUserDetail(Function(UserDetailEntity data) callback){
    requestNetwork<UserDetailEntity>(Method.get,
      url: Api.get_user_detail,
//      isShow: false,
      onSuccess: (data){
        print("获取登录用户信息参数成功:$data");
        callback(data);
      },
    );
  }


}