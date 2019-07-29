///用户详情信息
class UserDetailEntity {
	String archived;
	String lastLoginTime;
	String password;
	String createTime;
	String guid;
	String defaultUser;
	String id;
	String version;
	String username;

	UserDetailEntity({this.archived, this.lastLoginTime, this.password, this.createTime, this.guid, this.defaultUser, this.id, this.version, this.username});

	UserDetailEntity.fromJson(Map<String, dynamic> json) {
		archived = json['archived'];
		lastLoginTime = json['lastLoginTime'];
		password = json['password'];
		createTime = json['createTime'];
		guid = json['guid'];
		defaultUser = json['defaultUser'];
		id = json['id'];
		version = json['version'];
		username = json['username'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['archived'] = this.archived;
		data['lastLoginTime'] = this.lastLoginTime;
		data['password'] = this.password;
		data['createTime'] = this.createTime;
		data['guid'] = this.guid;
		data['defaultUser'] = this.defaultUser;
		data['id'] = this.id;
		data['version'] = this.version;
		data['username'] = this.username;
		return data;
	}
}
