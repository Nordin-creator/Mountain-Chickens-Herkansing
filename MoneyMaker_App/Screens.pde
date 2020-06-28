class Screens
{
 
  
  Screens() 
  {
    
  }

  void LetsUseThisScreenPattern()
  {
    imageMode(CORNER);
    textSize(style.textSize);
    text(screen, 1600, 50);
    image(style.picture, style.posImg, style.posImg, style.size, style.size);
    text(style.text, style.posTxt, style.posTxt);
    next(screen+1);
    previous(screen-1);
  }
  
  
  
}
