class AuthModeModels {
  int? status;
  String? msg;
  Data? data;
  Null? action;
  Null? appinstruction;

  AuthModeModels(
      {this.status, this.msg, this.data, this.action, this.appinstruction});

  AuthModeModels.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    action = json['action'];
    appinstruction = json['appinstruction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['action'] = this.action;
    data['appinstruction'] = this.appinstruction;
    return data;
  }
}

class Data {
  String? userEmail;
  String? isActive;
  String? otp;

  Data({this.userEmail, this.isActive, this.otp});

  Data.fromJson(Map<String, dynamic> json) {
    userEmail = json['user_email'];
    isActive = json['is_active'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_email'] = this.userEmail;
    data['is_active'] = this.isActive;
    data['otp'] = this.otp;
    return data;
  }
}