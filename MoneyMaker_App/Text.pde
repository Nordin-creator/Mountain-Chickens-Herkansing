class Text
{
  final int TEXT_SIZE = 40;
  final int TEXT_XPOSITION = 1050;
  final int TEXT_YPOSITION = 450;
  final int TEXT_START = 1000;
  final int TEXT_STOP = 600;

  String text;
  String[] woorden = loadStrings("Tekst.txt");

  Text()
  {
    text = woorden[0];
  }
}
