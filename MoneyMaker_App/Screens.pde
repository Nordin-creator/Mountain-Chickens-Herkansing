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

  void Display()
  {
    switch(screen)
  {
  case 0:
    style.text = "Dit is Monay\n Hij houdt ervan om mensen voor de gek te houden";
    style.picture = style.laugh;
    break;

  case 1:
    style.text = "Dit zijn de dobbelstenen";
    style.picture = style.dobbelstenen;
    break;

  case 2:
    style.text = "Dit is een bankrun fiche";
    style.picture = style.bankrun;
    break;

  case 3:
    style.text = "Dit is goud";
    style.picture = style.goud;
    break;

  case 4:
    style.text = "Dit zijn de goederen";
    style.picture = style.goederen;
    break;

  case 5:
    style.text = "Dit is een gilde";
    style.picture = style.gilde;
    break;

  default:
    style.text = "Je hebt te ver geklikt";
    style.picture = style.bank;
    break;
  }
  }
}
