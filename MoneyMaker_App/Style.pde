//In this class all things style-related
//will be handled. like textsizes and colors etc.
class Style
{
  color backgroundColor;
  color black;
  color white;
  color glossaryBlue;

  float size = 500;
  float posImg = 50;

  PImage b10;
  PImage g10;
  PImage r10;
  PImage b20;
  PImage g20;
  PImage r20;

  PImage baksteen;
  PImage bloem;
  PImage boot;
  PImage molen;
  PImage vis;
  PImage wiel;

  PImage bankrun;
  PImage actiekaarten;
  PImage bank;
  PImage dobbelstenen;
  PImage financieringskaarten;
  PImage gilde;
  PImage goud;
  PImage krediet;
  PImage goederen;
  PImage promoveren;

  PImage laugh;
  PImage shrug;
  PImage whisper;

  PImage rechterPijl;
  PImage linkerPijl;

  PImage picture;

  Style()
  {
    backgroundColor = color(37, 116, 179);
    black = color(0);
    white = color(255);
    glossaryBlue = color(7, 53, 90);

    b10 = loadImage("data/10b.png");
    g10 = loadImage("data/10g.png");
    r10 = loadImage("data/10r.png");
    b20 = loadImage("data/20b.png");
    g20 = loadImage("data/20g.png");
    r20 = loadImage("data/20r.png");

    baksteen = loadImage("data/Bakstenen.png");
    bloem = loadImage("data/Bloem.png");
    boot = loadImage("data/Boot.png");
    molen = loadImage("data/Molen.png");
    vis = loadImage("data/Vis.png");
    wiel = loadImage("data/Wiel.png");

    bankrun = loadImage("data/bankrunfiche.png");
    actiekaarten = loadImage("data/glossary_actiekaarten.png");
    bank = loadImage("data/glossary_bank.png");
    dobbelstenen = loadImage("data/glossary_dobbelstenen.png");
    financieringskaarten = loadImage("data/glossary_financieringskaarten.png");
    gilde = loadImage("data/glossary_gilde.png");
    goud = loadImage("data/glossary_goud.png");
    krediet = loadImage("data/glossary_krediet.png");
    goederen = loadImage("data/glossary_productie-consumptie.png");
    promoveren = loadImage("data/glossary_promoveren.png");

    laugh = loadImage("data/laugh.png");
    shrug = loadImage("data/shrug.png");
    whisper = loadImage("data/whisper.png");

    rechterPijl = loadImage("data/rechterpijl.png");
    linkerPijl = loadImage("data/linkerpijl.png");

    picture = laugh;
  }
}
