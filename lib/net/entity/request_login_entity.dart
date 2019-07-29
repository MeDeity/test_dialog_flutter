///
/// 登录请求参数
///
class RequestLoginEntity {
  String password;
  String username;

  RequestLoginEntity({this.password, this.username});

  RequestLoginEntity.fromJson(Map<String, dynamic> json) {
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['password'] = this.password;
    data['username'] = this.username;
    return data;
  }
}
