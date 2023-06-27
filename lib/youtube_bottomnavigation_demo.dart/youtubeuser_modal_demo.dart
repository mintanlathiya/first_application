import 'package:flutter/material.dart';

class YoutubeBottomSheet {
  IconData? icon;
  String? iconName, messageNumber;
  YoutubeBottomSheet({this.icon, this.iconName, this.messageNumber});
  factory YoutubeBottomSheet.fromJson(Map<String, dynamic> json) =>
      YoutubeBottomSheet(
        icon: json['icon'],
        iconName: json['iconName'],
      );
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (icon != null) {
      data['icon'] = icon;
    }
    if (iconName != null) {
      data['iconName'] = iconName;
    }

    return data;
  }
}

class YoutubeEndDrawerBottomSheet {
  IconData? icon;
  String? iconName;
  YoutubeEndDrawerBottomSheet({this.icon, this.iconName});
  factory YoutubeEndDrawerBottomSheet.fromJson(Map<String, dynamic> json) =>
      YoutubeEndDrawerBottomSheet(
        icon: json['icon'],
        iconName: json['iconName'],
      );
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (icon != null) {
      data['icon'] = icon;
    }
    if (iconName != null) {
      data['iconName'] = iconName;
    }

    return data;
  }
}
////////////////////////////////////////////////////////////////

class YoutubeShortsHomeDetail {
  String? url, subName, views;
  YoutubeShortsHomeDetail({this.url, this.subName, this.views});
  factory YoutubeShortsHomeDetail.fromJson(Map<String, dynamic> json) =>
      YoutubeShortsHomeDetail(
        url: json['url'],
        subName: json['subName'],
        views: json['views'],
      );
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (url != null) {
      data['url'] = url;
    }
    if (subName != null) {
      data['subName'] = subName;
    }
    if (views != null) {
      data['views'] = views;
    }

    return data;
  }
}
////////////////////////////////////////////////////

class YoutubeHomePageDetail {
  String? videoProfile,
      videoTime,
      acProfile,
      subName,
      channelName,
      views,
      durationTime,
      advertise;
  YoutubeHomePageDetail({
    this.videoProfile,
    this.videoTime,
    this.acProfile,
    this.subName,
    this.channelName,
    this.views,
    this.durationTime,
  });
  factory YoutubeHomePageDetail.fromJson(Map<String, dynamic> json) =>
      YoutubeHomePageDetail(
        videoProfile: json['videoProfile'],
        videoTime: json['videoTime'],
        acProfile: json['acProfile'],
        subName: json['subName'],
        channelName: json['channelName'],
        views: json['views'],
        durationTime: json['durationTime'],
      );
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (videoProfile != null) {
      data['videoProfile'] = videoProfile;
    }
    if (videoTime != null) {
      data['videoTime'] = videoTime;
    }
    if (acProfile != null) {
      data['acProfile'] = acProfile;
    }
    if (subName != null) {
      data['subName'] = subName;
    }

    if (channelName != null) {
      data['channelName'] = channelName;
    }
    if (views != null) {
      data['views'] = views;
    }

    if (durationTime != null) {
      data['durationTime'] = durationTime;
    }

    return data;
  }
}
