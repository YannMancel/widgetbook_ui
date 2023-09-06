import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgetbook.directories.g.dart';

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: <WidgetbookAddon<dynamic>>[
        MaterialThemeAddon(
          themes: <WidgetbookTheme<ThemeData>>[
            WidgetbookTheme(
              name: 'Light',
              data: ThemeData.light(),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: ThemeData.dark(),
            ),
          ],
        ),
        TextScaleAddon(
          scales: <double>[1.0, 2.0],
        ),
        LocalizationAddon(
          locales: <Locale>[
            const Locale('en', 'US'),
          ],
          localizationsDelegates: <LocalizationsDelegate<dynamic>>[
            DefaultWidgetsLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
          ],
        ),
        DeviceFrameAddon(
          devices: <DeviceInfo>[
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
          ],
        ),
      ],
    );
  }
}
