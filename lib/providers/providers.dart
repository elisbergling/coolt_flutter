import 'package:coolt_flutter/screens/activity_screen.dart';
import 'package:coolt_flutter/screens/caleder_screen.dart';
import 'package:coolt_flutter/screens/home_screen.dart';
import 'package:coolt_flutter/screens/messages_screen.dart';
import 'package:coolt_flutter/screens/settings_screen.dart';
import 'package:coolt_flutter/screens/support_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pagesProvider = Provider<List<String>>((_) => [
      'home',
      'calender',
      'messages',
      'support',
      'activity',
      'settings',
    ]);

final screensProvider = Provider<List<Widget>>((_) => [
      HomeScreen(),
      CalenderScreen(),
      MessagesScreen(),
      SupportScreen(),
      ActivityScreen(),
      SettingsScreen(),
    ]);
