import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

/// UI view for output of all Talker logs and errors
class TalkerScreen extends StatelessWidget {
  const TalkerScreen(
      {Key? key,
      required this.talker,
      this.appBarTitle = 'Talker',
      this.settingsSheetTitle = 'Talker settings',
      this.theme = const TalkerScreenTheme(),
      this.itemsBuilder,
      this.appBarLeading,
      this.customSettings})
      : super(key: key);

  /// Talker implementation
  final Talker talker;

  /// Theme for customize [TalkerScreen]
  final TalkerScreenTheme theme;

  /// Screen [AppBar] title
  final String appBarTitle;

  /// Settings screen title
  final String settingsSheetTitle;

  /// Screen [AppBar] leading
  final Widget? appBarLeading;

  /// Optional Builder to customize
  /// log items cards in list
  final TalkerDataBuilder? itemsBuilder;

  final ValueNotifier<List<CustomSettingsGroup>>? customSettings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: TalkerView(
        talker: talker,
        theme: theme,
        appBarTitle: appBarTitle,
        settingsSheetTitle: settingsSheetTitle,
        appBarLeading: appBarLeading,
        customSettings: customSettings,
      ),
    );
  }
}
