class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilePhotoUrl;
  String token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.profilePhotoUrl,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profilePhotoUrl': profilePhotoUrl,
      'token': token,
    };
  }

  get getId => this.id;

  set setId(id) => this.id = id;

  get getEmail => this.email;

  set setEmail(email) => this.email = email;

  get getUsername => this.username;

  set setUsername(username) => this.username = username;

  get getProfilePhotoUrl => this.profilePhotoUrl;

  set setProfilePhotoUrl(profilePhotoUrl) =>
      this.profilePhotoUrl = profilePhotoUrl;

  get getToken => this.token;

  set setToken(token) => this.token = token;
}
