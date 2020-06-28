ArrayList<Screen> screens;

//Screens screens;
Style style;
Text text;
int screen = 1;
int count;
final int COUNT_LIMIT = 40;

void setup()
{
  size(1650, 900);
  text = new Text();
  screens = new ArrayList<Screen>();
  style = new Style();
  //screens = new Screen();
  textAlign(CENTER);
  rectMode(CENTER);
}

void draw()
{
  count++;
  background(style.backgroundColor);
  println("Screen " + screen);
  screens.add(new Screen());
  defaultScreen();
  //screens.display();

  /*
  if (screens.size() < 4)
   {
   screens.add(new Screen());
   }
   */
  for (int i = 0; i < screens.size(); i++)
  {
    Screen s = screens.get(i);
    s.display();
  }
}

void defaultScreen()
{
  imageMode(CORNER);
  textSize(text.TEXT_SIZE);

  text(text.text, text.TEXT_START, text.TEXT_STOP, text.TEXT_XPOSITION, text.TEXT_YPOSITION);
  image(style.picture, style.posImg, style.posImg, style.size, style.size);

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
  fill(style.white);
  image(style.rechterPijl, 1500, 865, 100, 50);

  if (overlaps(1500, 865, 100, 50))
  {
    screen = nextScreen;
  }
}

void previous(int previousScreen)
{
  imageMode(CENTER);
  fill(style.white);
  image(style.linkerPijl, 100, 865, 100, 50);
  if (overlaps(100, 865, 100, 50))
  {
    screen = previousScreen;
  }
}
