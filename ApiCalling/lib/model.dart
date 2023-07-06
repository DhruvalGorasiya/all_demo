class LoginModel {
  bool? success;
  Data? data;
  String? message;

  LoginModel({this.success, this.data, this.message});

  LoginModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    return data;
  }
}

class Data {
  int? id;
  String? firstName;
  String? lastName;
  int? countryId;
  String? currency;
  String? currencyShortCode;
  String? countryCode;
  String? phoneNumber;
  String? phoneWithCode;
  String? email;
  int? gender;
  String? profilePicture;
  String? password;
  String? pin;
  String? fcmToken;
  String? socialId;
  int? status;
  int? notification;
  int? wallet;
  String? referralCode;
  String? referedBy;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? token;

  Data(
      {this.id,
      this.firstName,
      this.lastName,
      this.countryId,
      this.currency,
      this.currencyShortCode,
      this.countryCode,
      this.phoneNumber,
      this.phoneWithCode,
      this.email,
      this.gender,
      this.profilePicture,
      this.password,
      this.pin,
      this.fcmToken,
      this.socialId,
      this.status,
      this.notification,
      this.wallet,
      this.referralCode,
      this.referedBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.token});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    countryId = json['country_id'];
    currency = json['currency'];
    currencyShortCode = json['currency_short_code'];
    countryCode = json['country_code'];
    phoneNumber = json['phone_number'];
    phoneWithCode = json['phone_with_code'];
    email = json['email'];
    gender = json['gender'];
    profilePicture = json['profile_picture'];
    password = json['password'];
    pin = json['pin'];
    fcmToken = json['fcm_token'];
    socialId = json['social_id'];
    status = json['status'];
    notification = json['notification'];
    wallet = json['wallet'];
    referralCode = json['referral_code'];
    referedBy = json['refered_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['country_id'] = countryId;
    data['currency'] = currency;
    data['currency_short_code'] = currencyShortCode;
    data['country_code'] = countryCode;
    data['phone_number'] = phoneNumber;
    data['phone_with_code'] = phoneWithCode;
    data['email'] = email;
    data['gender'] = gender;
    data['profile_picture'] = profilePicture;
    data['password'] = password;
    data['pin'] = pin;
    data['fcm_token'] = fcmToken;
    data['social_id'] = socialId;
    data['status'] = status;
    data['notification'] = notification;
    data['wallet'] = wallet;
    data['referral_code'] = referralCode;
    data['refered_by'] = referedBy;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['token'] = token;
    return data;
  }
}

class Photos {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photos(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory Photos.fromJson(Map<String, dynamic> json) {
    return Photos(
      id: json['id'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
      title: json['title'],
      albumId: json['albumId'],
    );
  }
}
