class Question {
  final int id;
  final int answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.answer,
      required this.options,
      required this.question});
}

const List data = [
  {
    "id": 1,
    "question": "It’s said that he has ________ friends of his age.",
    "options": ['few', 'plenty', 'a little', 'little'],
    "answer": 1
  },
  {
    "id": 2,
    "question": "It’s said that he has _______ friends of his age.",
    "options": ['told', 'have told', 'were told', 'tell'],
    "answer": 3
  },
  {
    "id": 3,
    "question": "It’s said that he has ________ friends of his age.",
    "options": ['that', 'who', 'what', 'those'],
    "answer": 1
  },
  {
    "id": 4,
    "question":
        "The existence of many stars in the sky _______ us to suspect that there may be life on another planet.",
    "options": ['have led', 'leads', 'lead', 'leading'],
    "answer": 2
  }
];
