class Screens
{

  Screens() 
  {
  }

  void LetsUseThisScreenPattern()
  {
    imageMode(CORNER);
    textMode(CORNER);
    textSize(style.textSize);
    image(style.shrug, style.posImg, style.posImg, style.size, style.size);
    text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Praesent maximus.", style.posTxt, style.posTxt);
    //next();
    //previous;
  }

  void screen1()
  {
    //next(2);
    textSize(100);
    text("hi", 100, 100);
    next(2);
  }

  void screen2()
  {
    text("hello there", style.posTxt, style.posTxt);
    previous(1);
  }
}
