class Quizequestion
{
  Quizequestion(this.text,this.answere);
  final String text;
  final List<String> answere;

  List<String> get ShuffledAnswer{
    final shuffleList=List.of(answere);
    shuffleList.shuffle();
    return shuffleList;
  }
}