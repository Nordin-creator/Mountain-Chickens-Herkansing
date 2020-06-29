class Text
{
  final int TEXT_SIZE = 40;
  final int TEXT_XPOSITION = 1100;
  final int TEXT_YPOSITION = 450;
  final int TEXT_START = 1000;
  final int TEXT_STOP = 600;

  String text;
  //Met deze loadstrings wordt een txt file ingeladen. Elke line in de txt file heeft een aparte index value binnen de array.
  String[] woorden = loadStrings("Tekst.txt");
}
