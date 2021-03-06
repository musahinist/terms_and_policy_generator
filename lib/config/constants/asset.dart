class Asset {
  const Asset._();
  static const audio = _AudioAsset();
  static const svg = _SvgAsset();
  static const image = _ImageAsset();
}

class _SvgAsset {
  const _SvgAsset();
  final String splashLogo = 'assets/splash_logo.svg';
  final String logo = 'assets/svg/logo.svg';
  final String deleteIcon = 'assets/svg/del.svg';
  final String illustration = 'assets/svg/illustration.svg';
  final String chemistryLab = 'assets/svg/chemistry_lab.svg';
}

class _ImageAsset {
  const _ImageAsset();
  final String shapes = 'assets/images/shapes.png';
  final String baloonBg = 'assets/images/baloon_bg.png';
  final String child = 'assets/images/child.png';
  final String boyGirl1 = 'assets/images/boy_girl_1.png';
  final String logo = "assets/images/logo.png";
  final String ball = "assets/images/ball_2.png";
  final String clock = "assets/images/clock_2.png";
  final String woodenTile = "assets/images/wooden_bg_tile.jpg";
}

class _AudioAsset {
  const _AudioAsset();

  final String gameOver = 'assets/audio/game_over.mp3';
  final String gameWin = 'assets/audio/game_win.mp3';
  final String gameStart = 'assets/audio/game_start.mp3';
  final String reject = 'audio/reject.wav';
  final String match = 'audio/match.wav';
}
