import 'package:flutter/material.dart';
import 'package:talker_flutter/src/ui/talker_settings/talker_settings.dart';

class CustomSettingsItemAction extends CustomSettingsItem<void Function()> {
  final void Function() onTap;
  final String buttonName;

  const CustomSettingsItemAction({
    required String name,
    required this.onTap,
    this.buttonName = 'Action',
  }) : super(name: name, value: onTap);

  @override
  Widget widgetBuilder(
    BuildContext context,
    void Function() value,
    bool isEnabled,
  ) {
    return ActionWidgetBuilder(
      value: value,
      isEnabled: isEnabled,
      buttonName: buttonName,
    );
  }
}

class ActionWidgetBuilder extends StatelessWidget {
  const ActionWidgetBuilder({
    required this.value,
    required this.buttonName,
    this.isEnabled = true,
    super.key,
  });

  final bool isEnabled;
  final void Function() value;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 150),
      child: ElevatedButton(
        onPressed: isEnabled ? value : null,
        child: Text(buttonName),
      ),
    );
  }
}
