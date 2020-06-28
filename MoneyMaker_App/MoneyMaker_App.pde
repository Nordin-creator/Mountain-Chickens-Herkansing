ArrayList <Screens> Screen;

Screens screens;
Style style;
int screen;
int count;
final int countLimit = 40;
// 0 voor beginners versie, 1 voor volledige versie.
int version;

void setup()
{
  size(1650, 900);
  screens = new Screens();
  style = new Style();
  Screen = new ArrayList<Screens>();
  textAlign(CENTER);
  rectMode(CENTER);
}

void draw()
{
  count++;
  background(style.backgroundColor);
  //println(screen);
  println("Screen " + screen);

  if (Screen.size() < 4)
  {
    Screen.add(new Screens());
  }
  for (int i = 0; i < Screen.size(); i++)
  {
    Screens s = Screen.get(i);
    s.LetsUseThisScreenPattern();
  }
  /* switch(screen)
   {
   case 1:
   screens.screen1();
   return;
   
   case 2:
   screens.screen2();
   return;
   }*/
}

//This function calculates whether or not a rectangle has been clicked on.
//Enter the coördinates (x0, y0) and the sizes (w0, h0) of the rect you want to calculate the overlap with.
//The count makes it so that you dont accidentally skip a screen by holding the mouse button too long.
//NOTE: this only works when the rect is in rectMode(CENTER).
boolean overlaps(float x0, float y0, float w0, float h0)
{
  if (mouseX > (x0 - w0/2) && mouseX < (x0 + w0/2) && mouseY > (y0 - h0/2) && mouseY < (y0 + h0/2) && mousePressed && count > countLimit)
  {
    count = 0;
    return true;
  } else
  {
    return false;
  }
}

//This function calculates if the mouse is hovering over a rectangle.
//Enter the coördinates (x0, y0) and the sizes (w0, h0) of the rect you want to calculate the overlap with.
//NOTE: this only works when the rect is in rectMode(CENTER).
boolean overlapsHover(float x0, float y0, float w0, float h0)
{
  if (mouseX > (x0 - w0/2) && mouseX < (x0 + w0/2) && mouseY > (y0 - h0/2) && mouseY < (y0 + h0/2))
  {
    return true;
  } else
  {
    return false;
  }
}

//This function draws an arrow in the bottom left corner of the screen
//When it is clicked the screen changes to the screen number given in the paramater of this function
//Count makes it impossible for the player to accidentally skip a screen by holding the mouse button for too long
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

//This function draws an arrow in the bottom right corner of the screen
//When it is clicked the screen changes to the screen number given in the paramater of this function
//Count makes it impossible for the player to accidentally skip a screen by holding the mouse button for too long
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
