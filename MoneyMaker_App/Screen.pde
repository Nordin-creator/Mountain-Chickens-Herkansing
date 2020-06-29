class Screen
{
  final int MAX_SCREEN = 7;
  final int MIN_SCREEN = 0;
  final int START_SCREEN = 1;
  
  void restart() {
    if (screen == MAX_SCREEN) {
      screen = MIN_SCREEN + START_SCREEN;
    }
  }
}
