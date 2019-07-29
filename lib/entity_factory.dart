

import 'package:test_dialog/net/entity/login_item_entity.dart';
import 'package:test_dialog/net/entity/reponse_login_entity.dart';
import 'package:test_dialog/net/entity/reponse_user_info_entity.dart';
import 'package:test_dialog/net/entity/request_login_entity.dart';
import 'package:test_dialog/net/entity/response_user_info_entity.dart';
import 'package:test_dialog/net/entity/sample_entity.dart';
import 'package:test_dialog/net/entity/user_detail_entity.dart';
import 'package:test_dialog/net/entity/user_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "LoginItemEntity") {
      return LoginItemEntity.fromJson(json) as T;
    }else if (T.toString() == "UserDetailEntity") {
      return UserDetailEntity.fromJson(json) as T;
    }else if (T.toString() == "ReponseLoginEntity") {
      return ReponseLoginEntity.fromJson(json) as T;
    }  else if (T.toString() == "ReponseUserInfoEntity") {
      return ReponseUserInfoEntity.fromJson(json) as T;
    }  else if (T.toString() == "RequestLoginEntity") {
      return RequestLoginEntity.fromJson(json) as T;
    }  else if (T.toString() == "ResponseUserInfoEntity") {
      return ResponseUserInfoEntity.fromJson(json) as T;
    } else if (T.toString() == "SampleEntity") {
      return SampleEntity.fromJson(json) as T;
    }  else if (T.toString() == "UserEntity") {
      return UserEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}