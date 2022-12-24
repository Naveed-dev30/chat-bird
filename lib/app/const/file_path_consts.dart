// ignore_for_file: non_constant_identifier_names

class FilePath {
  FilePath._internal();

  ///Env Files
  static String get ENV_PATH => 'env/.env';

  ///Icons
  static String get APP_ICON => 'assets/icons/app_icon/chat.png';

  ///Images
  static String get SPLASH_SCREEN_IMAGE => 'assets/images/splash/splash_image.jpg';

  ///SVG Pictures
  static String get BUDDIES_SVG_PICTURE => 'assets/svgs/onboard/buddies.svg';

  ///Onboard Pictures
  static String get ONBOARD_1 => 'assets/svgs/onboard/onboard_1.svg';

  static String get ONBOARD_2 => 'assets/svgs/onboard/onboard_2.svg';

  static String get ONBOARD_3 => 'assets/svgs/onboard/onboard_3.svg';

  ///Groups

  ///OnboardImages Group
  static List<String> get onboardImages => [
        ONBOARD_1,
        ONBOARD_2,
        ONBOARD_3,
      ];
}
