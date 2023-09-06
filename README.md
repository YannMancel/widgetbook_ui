[![badge_flutter]][link_flutter_release]

# widgetbook_ui
**Goal**: A Flutter project to manage design system.

## Getting Started

### Prerequisites
* Computer (Windows, Mac or Linux)
* IDE (Android Studio or Visual Studio Code)
* [fvm][dependency_fvm]

### Installation

```sh
# Download the project code
git clone git@github.com:YannMancel/widgetbook_ui.git

# Install environment
make install

# Update dependencies
make dependencies

# Generate files with build_runner
make generate-files

# Run application on web by default debug version
make run-web
```

## Dependencies
* Flutter Version Management
  * [fvm][dependency_fvm]
* Linter
  * [flutter_lints][dependency_flutter_lints]
* Data class generator
  * [build_runner][dependency_build_runner]
* Tests
  * [widgetbook][dependency_widgetbook]
  * [widgetbook_annotation][dependency_widgetbook_annotation]
  * [widgetbook_generator][dependency_widgetbook_generator]

## Useful
* [Download Android Studio][useful_android_studio]

[badge_flutter]: https://img.shields.io/badge/flutter-v3.10.6-blue?logo=flutter
[link_flutter_release]: https://docs.flutter.dev/development/tools/sdk/releases
[dependency_fvm]: https://fvm.app/
[dependency_flutter_lints]: https://pub.dev/packages/flutter_lints
[dependency_build_runner]: https://pub.dev/packages/build_runner
[dependency_widgetbook]: https://pub.dev/packages/widgetbook
[dependency_widgetbook_annotation]: https://pub.dev/packages/widgetbook_annotation
[dependency_widgetbook_generator]: https://pub.dev/packages/widgetbook_generator
[useful_android_studio]: https://developer.android.com/studio
