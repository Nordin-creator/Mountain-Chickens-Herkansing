class Screen
{
  Screen() 
  {
  }

  void display() {
    switch(screen)
    {
    default:
      text.text = text.woorden[0];
      style.picture = style.bank;
      break;

    case 1:
      text.text = text.woorden[1];
      style.picture = style.laugh;
      break;

    case 2:
      text.text = text.woorden[2];
      style.picture = style.dobbelstenen;
      break;

    case 3:
      text.text = text.woorden[3];
      style.picture = style.bankrun;
      break;

    case 4:
      text.text = text.woorden[4];
      style.picture = style.goud;
      break;

    case 5:
      text.text = text.woorden[5];
      style.picture = style.goederen;
      break;
    }
  }
}
