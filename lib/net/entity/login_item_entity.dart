class LoginItemEntity {
	String accessToken;

	LoginItemEntity({this.accessToken});

	LoginItemEntity.fromJson(Map<String, dynamic> json) {
		accessToken = json['access_token'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['access_token'] = this.accessToken;
		return data;
	}
}
