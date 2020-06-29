//In this class all things style-related
//will be handled. like colors etc.
class Style
{
  final color BACKGROUND_COLOR = color(37, 116, 179);
  final color WHITE = color(255);
  
  final int PICTURE_SIZE = 500;
  final int PICTURE_XPOSITION = 300;
  final int PICTURE_YPOSITION = 400;
  ArrayList<PImage> picture = new ArrayList();
  
  final int NUMBER_PICTURES = 10;

  PImage rechterPijl;
  PImage linkerPijl;

  Style()
  {
    for (int i = 0; i < NUMBER_PICTURES; i++) {
      picture.add (loadImage("screen"+i+".png"));
    }
    
    rechterPijl = loadImage("data/rechterpijl.png");
    linkerPijl = loadImage("data/linkerpijl.png");
  }
}
