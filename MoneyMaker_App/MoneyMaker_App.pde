//Money Maker interactieve tutorial
//Nordin el Hadaoui, 500833417
//Kiano Wortel, 
//Pepijn

Screen screens;
Style style;
Text text;
int screen = 1;
int count;
final int COUNT_LIMIT = 40;

final int LINKERPIJL_XLOC = 100;
final int RECHTERPIJL_XLOC = 1500;
final int PIJL_YLOC = 865;
final int PIJL_WIDTH = 100;
final int PIJL_HEIGHT = 50;

void setup()
{
  size(1650, 900);
  text = new Text();
  style = new Style();
  screens = new Screen();
  textAlign(CENTER);
  rectMode(CENTER);
}

void draw()
{
  count++;
  background(style.BACKGROUND_COLOR);
  println("Screen " + screen);
  defaultScreen();
  screens.restart();
}

void defaultScreen()
{
  textSize(text.TEXT_SIZE);

  if (screen <= screens.MIN_SCREEN || screen >= screens.MAX_SCREEN) {
    text(text.woorden[0], text.TEXT_XPOSITION, text.TEXT_YPOSITION, text.TEXT_START, text.TEXT_STOP);
    image(style.picture.get(0), style.PICTURE_XPOSITION, style.PICTURE_YPOSITION, style.PICTURE_SIZE, style.PICTURE_SIZE);
  }
  
  if (screen > screens.MIN_SCREEN && screen < screens.MAX_SCREEN) {
    text(text.woorden[screen], text.TEXT_XPOSITION, text.TEXT_YPOSITION, text.TEXT_START, text.TEXT_STOP);

    image(style.picture.get(screen), style.PICTURE_XPOSITION, style.PICTURE_YPOSITION, style.PICTURE_SIZE, style.PICTURE_SIZE);
  }

  next(screen--);
  previous(screen++);
}

boolean overlaps(float x0, float y0, float w0, float h0)
{
  if (mouseX > (x0 - w0/2) && mouseX < (x0 + w0/2) && mouseY > (y0 - h0/2) && mouseY < (y0 + h0/2) && mousePressed && count > COUNT_LIMIT)
  {
    count = 0;
    return true;
  } else
  {
    return false;
  }
}
void next(int nextScreen)
{
  imageMode(CENTER);
  fill(style.WHITE);
  image(style.rechterPijl, RECHTERPIJL_XLOC, PIJL_YLOC, PIJL_WIDTH, PIJL_HEIGHT);

  if (overlaps(RECHTERPIJL_XLOC, PIJL_YLOC, PIJL_WIDTH, PIJL_HEIGHT))
  {
    screen = nextScreen;
  }
}

void previous(int previousScreen)
{
  imageMode(CENTER);
  fill(style.WHITE);
  image(style.linkerPijl, LINKERPIJL_XLOC, PIJL_YLOC, PIJL_WIDTH, PIJL_HEIGHT);

  if (overlaps(LINKERPIJL_XLOC, PIJL_YLOC, PIJL_WIDTH, PIJL_HEIGHT))
  {
    screen = previousScreen;
  }
}
