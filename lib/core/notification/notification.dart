import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator/geolocator.dart';

class Notification {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Notification() {
    var initializationSettingsAndroid =
        const AndroidInitializationSettings('app_icon');
    var initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future showNotificationWithoutSound(Position position) async {
    print(position.toString());

    var androidPlatformChannel = const AndroidNotificationDetails(
        '1', 'location-bg',
        importance: Importance.high, priority: Priority.high, ticker: 'ticker');

    var platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannel);

    await flutterLocalNotificationsPlugin.show(
      0,
      'Location fetched',
      position.toString(),
      platformChannelSpecifics,
      payload: '',
    );
  }
}
