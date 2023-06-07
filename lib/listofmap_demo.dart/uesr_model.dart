import 'package:flutter/material.dart';

class User {
  String? userName, emailId, url, time;

  User({this.userName, this.emailId, this.url, this.time});
  factory User.fromJson(Map<String, dynamic> json) => User(
        userName: json['userName'],
        emailId: json['emailId'],
        url: json['url'],
        time: json['time'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (userName != null) {
      data['userName'] = userName;
    }
    if (emailId != null) {
      data['emailId'] = emailId;
    }
    if (url != null) {
      data['url'] = url;
    }
    if (time != null) {
      data['time'] = time;
    }

    return data;
  }
}

class UserCall {
  String? name, url, time;
  IconData? icon;

  UserCall({
    this.name,
    this.url,
    this.time,
    this.icon,
  });
  factory UserCall.fromJson(Map<String, dynamic> json) => UserCall(
        name: json['name'],
        url: json['url'],
        time: json['time'],
        icon: json['icon'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (name != null) {
      data['name'] = name;
    }

    if (url != null) {
      data['url'] = url;
    }
    if (time != null) {
      data['time'] = time;
    }
    if (icon != null) {
      data['icon'] = icon;
    }

    return data;
  }
}

class UserInsta {
  String? name, url;

  UserInsta({
    this.name,
    this.url,
  });
  factory UserInsta.fromJson(Map<String, dynamic> json) => UserInsta(
        name: json['name'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (name != null) {
      data['name'] = name;
    }

    if (url != null) {
      data['url'] = url;
    }

    return data;
  }
}

class GmailDrawer {
  IconData? icon;
  String? iconName, messageNumber;
  GmailDrawer({this.icon, this.iconName, this.messageNumber});
  factory GmailDrawer.fromJson(Map<String, dynamic> json) => GmailDrawer(
        icon: json['icon'],
        iconName: json['iconName'],
        messageNumber: json['messageNumber'],
      );
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (icon != null) {
      data['icon'] = icon;
    }
    if (iconName != null) {
      data['iconName'] = iconName;
    }
    if (messageNumber != null) {
      data['messageNumber'] = messageNumber;
    }

    return data;
  }
}
