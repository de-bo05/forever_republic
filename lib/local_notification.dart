import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'data/ChannelData.dart';



class LocalNotification {
  static final LocalNotification localNotificationInstance =
      LocalNotification.internal();

  factory LocalNotification() => localNotificationInstance;

  LocalNotification.internal();

  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> setup() async {
    const androidInitializationSetting =
        AndroidInitializationSettings('@mipmap/launcher_icon');
    const iosInitializationSetting = DarwinInitializationSettings();
    const initSettings = InitializationSettings(
        android: androidInitializationSetting, iOS: iosInitializationSetting);
    await flutterLocalNotificationsPlugin.initialize(initSettings,
        onDidReceiveNotificationResponse: (response) {
      final message = RemoteMessage.fromMap(jsonDecode(response.payload ?? ""));
      handleNotificationPressed(message);
    });
  }
  void handleNotificationPressed(RemoteMessage? message) async {
    RemoteMessage? readMessage;
    if (message == null) {
      readMessage = await FirebaseMessaging.instance.getInitialMessage();
    } else {
      readMessage = message;
    }

    if (readMessage != null) {

    }
  }

  void showLocalNotification(
      String? title, String? body, ChannelData channelData,
      {String? payload,
      StyleInformation? styleInformation,
      List<DarwinNotificationAttachment>? darwinNotificationAttachment}) {
    final androidNotificationDetail = AndroidNotificationDetails(
        channelData.channelId, // channel Id
        channelData.channelName, // channel Name
        importance: channelData.importance,
        priority: channelData.priority,
        styleInformation: styleInformation);
    final iosNotificationDetail =
        DarwinNotificationDetails(attachments: darwinNotificationAttachment);
    final notificationDetails = NotificationDetails(
      iOS: iosNotificationDetail,
      android: androidNotificationDetail,
    );
    flutterLocalNotificationsPlugin.show(0, title, body, notificationDetails,
        payload: payload);
  }
}
