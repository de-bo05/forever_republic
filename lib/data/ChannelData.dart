
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class ChannelData {
  final String channelId;
  final String channelName;
  final Importance importance;

  final Priority priority;

  ChannelData(this.channelId, this.channelName,
      {this.importance = Importance.high, this.priority = Priority.max});
}
