class Screen
{
  //De max screen int zorgt ervoor dat het screen weer naar één wordt gezet in de tutorial.
  final int MAX_SCREEN = 10;
  final int MIN_SCREEN = 0;
  final int START_SCREEN = 1;

  final int NUMBER_PICTURES = 10;

  //De arraylist is voor het inladen van elk plaatje. In plaats van dat elk plaatje op een aparte line wordt ingeladen gebeurt het automatisch.
  //De arraylist is verder handig omdat je de get() methode kan gebruiken (in dit geval in de main class).
  ArrayList<PImage> picture = new ArrayList();

  Screen() {
    //In de for loop gaat i door tot 10 bereikt wordt.
    for (int i = 0; i < NUMBER_PICTURES; i++) {
      //Voor elke "i" wordt een plaatje ingeladen. 
      //Door een string te gebruiken en elke png file in de data folder bijna dezelfde naam te geven wordt dit automatisch gedaan.
      picture.add(loadImage("screen"+i+".png"));
    }
  }

  //Als het screen op de max screen komt, wordt het terug gezet naar het eerste screen.
  void restart() {
    if (screen == MAX_SCREEN) {
      screen = MIN_SCREEN + START_SCREEN;
    }
  }
}
