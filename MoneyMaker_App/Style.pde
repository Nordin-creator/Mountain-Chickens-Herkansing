//In deze klasse worden veel "stijl" gerelateerde variabelen geinitialiseerd en gedeclareerd.
//Ook worden de pijlen ingeladen.
class Style
{
  final color BACKGROUND_COLOR = color(37, 116, 179);
  final color WHITE = color(255);

  final int PICTURE_SIZE = 500;
  final int PICTURE_XPOSITION = 300;
  final int PICTURE_YPOSITION = 400;

  final int LINKERPIJL_XLOC = 100;
  final int RECHTERPIJL_XLOC = 1500;
  final int PIJL_YLOC = 865;
  final int PIJL_WIDTH = 100;
  final int PIJL_HEIGHT = 50;

  PImage rechterPijl;
  PImage linkerPijl;
  
  Style()
  {
    //De png files van de pijlen worden apart ingeladen en zitten niet in de array.
    rechterPijl = loadImage("data/rechterpijl.png");
    linkerPijl = loadImage("data/linkerpijl.png");
  }
}
