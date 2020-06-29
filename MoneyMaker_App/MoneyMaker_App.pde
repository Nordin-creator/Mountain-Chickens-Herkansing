//Money Maker interactieve tutorial
//Nordin el Hadaoui, 500833417
//Kiano Wortel, 500825684
//Pepijn Kluft, 500822339

Screen screens;
Style style;
Text text;
//Dit is het scherm waarop je begint. Je begint niet op scherm 0, alles onder 0 is het default scherm waar niks gebeurt.
int screen = 1;
//De count zorgt ervoor dat je een paar frames moet wachten om naar een volgend scherm te gaan. De count staat op 40.
int count;
final int COUNT_LIMIT = 40;

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
  //De println zorgt ervoor dat je de screen in de console bij kan houden.
  println("Screen " + screen);
  defaultScreen();
  screens.restart();
}

//Deze methode is de setup van het "default screen". Alles wat hierin staat is hoe elk scherm eruit ziet.
//Elk scherm is dus eigenlijk hetzelfde. Alleen de "woorden" array en "picture" arraylist worden aangepast.
void defaultScreen()
{
  textSize(text.TEXT_SIZE);

  //De if statement zorgt ervoor dat je niet out of bounds kan komen bij de arrays van de string en pictures.
  //De 0 van de index zorgt ervoor dat het scherm niet verandert elke keer dat een ander scherm wordt geselecteerd.
  if (screen <= screens.MIN_SCREEN || screen >= screens.MAX_SCREEN) {
    text(text.woorden[0], text.TEXT_XPOSITION, text.TEXT_YPOSITION, text.TEXT_START, text.TEXT_STOP);
    //De "get" methode wordt gebruikt om de plaatjes als het ware uit de arraylist te trekken.
    //Oftewel, de "get" methode "returns" een specifieke positie uit de arraylist.
    image(screens.picture.get(0), style.PICTURE_XPOSITION, style.PICTURE_YPOSITION, style.PICTURE_SIZE, style.PICTURE_SIZE);
  }

  //Bij deze if statements is het omgekeerd. Omdat de "screen" variabele wordt bijgehouden, worden de tekst en plaatjes aangepast basis op welk scherm is geselecteerd.
  if (screen > screens.MIN_SCREEN && screen < screens.MAX_SCREEN) {
    text(text.woorden[screen], text.TEXT_XPOSITION, text.TEXT_YPOSITION, text.TEXT_START, text.TEXT_STOP);

    image(screens.picture.get(screen), style.PICTURE_XPOSITION, style.PICTURE_YPOSITION, style.PICTURE_SIZE, style.PICTURE_SIZE);
  }
  
  next(screen--);
  previous(screen++);
}

//Deze overlaps methode zorgt voor collision met de knoppen.
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

//Deze twee methoden voegen de pijlen toe die je van scherm veranderen. 
void next(int nextScreen)
{
  imageMode(CENTER);
  fill(style.WHITE);
  image(style.rechterPijl, style.RECHTERPIJL_XLOC, style.PIJL_YLOC, style.PIJL_WIDTH, style.PIJL_HEIGHT);

  if (overlaps(style.RECHTERPIJL_XLOC, style.PIJL_YLOC, style.PIJL_WIDTH, style.PIJL_HEIGHT))
  {
    //Als er collision is met een van de pijlen wordt een screen als het ware een plek naar voren gezet. 
    screen = nextScreen;
  }
}

void previous(int previousScreen)
{
  imageMode(CENTER);
  fill(style.WHITE);
  image(style.linkerPijl, style.LINKERPIJL_XLOC, style.PIJL_YLOC, style.PIJL_WIDTH, style.PIJL_HEIGHT);

  if (overlaps(style.LINKERPIJL_XLOC, style.PIJL_YLOC, style.PIJL_WIDTH, style.PIJL_HEIGHT))
  {
    screen = previousScreen;
  }
}
