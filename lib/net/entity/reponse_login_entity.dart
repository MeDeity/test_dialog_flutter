///
/// 登录响应参数
///
class ReponseLoginEntity {
	String code;
	ReponseLoginData data;
	String info;

	ReponseLoginEntity({this.code, this.data, this.info});

	ReponseLoginEntity.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		data = json['data'] != null ? new ReponseLoginData.fromJson(json['data']) : null;
		info = json['info'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['info'] = this.info;
		return data;
	}
}

class ReponseLoginData {
	String accessToken;

	ReponseLoginData({this.accessToken});

	ReponseLoginData.fromJson(Map<String, dynamic> json) {
		accessToken = json['access_token'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['access_token'] = this.accessToken;
		return data;
	}
}
