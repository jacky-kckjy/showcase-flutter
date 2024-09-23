# Flutter Showcase

<p align="center">
     <img src="https://github.com/user-attachments/assets/8f047af8-0ace-4f36-852b-249b488632f8" alt="1" width="400">
</p>

> [!IMPORTANT]
> This is a showcase project for me, but always welcome for comments and suggestions.

## Introduction
Pokémon Center is a mobile app designed to provide an easy-to-use interface for Pokémon trainers to explore detailed information about their favorite Pokémon. Powered by the [PokeAPI](https://pokeapi.co/), the app offers real-time data on Pokémon species, abilities, stats, evolutions, and more. Whether you're a casual fan or a seasoned trainer, Pokémon Center delivers a seamless experience to browse, search, and learn about the vast world of Pokémon.

## Screenshots
<table>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/465ac175-ca9b-4acc-be2c-7a8894b09ac9" alt="1" width="200"></td>
    <td><img src="https://github.com/user-attachments/assets/94c1d2dd-5be4-4f72-baea-20f7638a4307" alt="2" width="200"></td>
    <td><img src="https://github.com/user-attachments/assets/13b5a7be-0150-4fba-b19a-56c52077315f" alt="3" width="200"></td>
    <td><img src="https://github.com/user-attachments/assets/b5dbdc31-2a36-4934-87ad-0c5caba8fc0f" alt="4" width="200"></td>
    <td><img src="https://github.com/user-attachments/assets/42ab5c71-9e91-40e9-a110-1527282854df" alt="5" width="200"></td>
    <td><img src="https://github.com/user-attachments/assets/0c3eba6b-3cc4-4111-8165-2f06f32b9714" alt="6" width="200"></td>
  </tr>  
</table>

## Environment
- Flutter 3.24.1
- Dart 3.5.1
- Android Studio Koala
- MacOS 14.1

## Project
#### Core libraries
- [Riverpod](https://riverpod.dev/)
- [Go Router](https://pub.dev/packages/go_router)
- [Dio](https://pub.dev/packages/dio)
- [Retrofit](https://pub.dev/packages/retrofit)
- [Freezed](https://pub.dev/packages/freezed)
- [Easy Localization](https://pub.dev/packages/easy_localization)

#### Structure
```
├── lib
│   ├── api                - It contains api related classes such as api client
│   ├── app                - It contains core files of the app such as theme and navigation
│   ├── extension          - It contains extension classes
│   ├── generated          - It contains code generated classes such as localization files
│   ├── main.dart          - Starting points of the app
│   ├── model
│   │   ├── data           - It contains request / response model class
│   │   ├── domain         - It contains data model class of the presentation layer
│   │   └── enums          - It contains enum class
│   ├── repository         - It contains repository class for data
│   ├── view               - It contains widgets of the screens with their providers and controllers
│   └── widget             - It contains all custom widgets
├── makefile               - It contains shortcut commands
├── resources              - It contains resources files of the app
│   ├── fonts              - It contains fonts files
│   ├── icons              - It contains svg icon files
│   ├── images             - It contains png/jpg image files
│   ├── lotties            - It contains lottie files
│   └── strings            - It contains localization files
└── scripts                - It contains script files 
```

#### Core files
- `app_startup.dart`: The initial widget for the `runApp()` method
- `app_main.dart` The main widget for configuring the app
- `app_text_styles.dart`: Text styles of the app
- `app_dimens.dart`: Dimensions of the app (e.g. padding, margin, icon size, etc)
- `app_colors.dart`: Colors used in the app
- `app_nav.dart`: Navigation and route configuration of the app

#### Update resources
There are shortcut commands for updating resources. Please check the `makefile`.
All the commands are used for generated files.
- `make update-icon`: generate the icon references (`icon_keys.g.dart`)
  - suport only `.svg` files
  - usage: `IconKeys.welcome`
- `make update-image`: generate the image references (`image_keys.g.dart`)
  - suport `.png`, `.jpg` files
  - usage: `ImageKeys.welcome`
- `make update-string`: generate the localization strings (`locale_keys.freezed.dart`)
  - add key value pair for the files
  - usage: `LocaleKeys.lable_welcome.localized()`
- `make gen / make watch`: generate the codes for the features
  - for library freezed, retrofit and riverpod
  - better use `watch` during development

#### ToDo
- Add more detail to Pokémon item (e.g. abilities, evolution details, breedings, etc)
- Support local database
- Support filtering on listing
- Support offline mode
- Support my favorites
- Support fast scrolling
- Enhance Pokémon item caching
- Add more pages...

## Setup
#### Flutter / Dart setup
- Dart SDK Path: Preferences->Languages & Framework->Dart
  - ```[PATH_OF_FLUTTER]/bin/cache/dart-sdk```
- Add flutter path to profile (Android studio terminal, macOS terminal)
  1. ```nano ~/.zshrc```
  2. ```export PATH="$PATH:[PATH_OF_FLUTTER]/bin"```

#### Build
- To build the app:
```
# sh scripts/build.sh -p android
```
The output file can be found at `./outputs`
- To run the app:
```
# flutter run -t lib/main.dart --release
```


