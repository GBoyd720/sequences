import 'package:flutter/material.dart';
import 'package:sequences/features/sequences/domain/entities/choice.dart';
import 'package:sequences/features/sequences/domain/entities/puzzle.dart';

class PuzzleDisplay extends StatelessWidget {
  final Puzzle puzzle;
  final bool showAll;

  const PuzzleDisplay({
    Key? key,
    required this.puzzle,
    this.showAll = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var displayLength = puzzle.currentChallenge;
    if (showAll) {
      displayLength = puzzle.challenge.length;
    }
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Column(children: <Widget>[
        Text(
          puzzle.currentChallenge.toString(),
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        Row(
          children: challengeRow(puzzle.challenge, displayLength),
        ),
        Row(
          children: choicesRow(puzzle.choices),
        )
      ]),
    );
  }

  List<Widget> challengeRow(List<Choice> challengeList, int displayLength) {
    List<Widget> puzzleRowArray = makeDisplayRow(challengeList, displayLength);
    return puzzleRowArray;
  }

  List<Widget> choicesRow(Set<Choice> setOfChoices) {
    List<Choice> choicesList = setOfChoices.toList();
    List<Widget> puzzleRowArray =
        makeDisplayRow(choicesList, choicesList.length);
    return puzzleRowArray;
  }

  List<Widget> makeDisplayRow(List<Choice> choiceList, int displayLength) {
    List<Widget> puzzleRowArray = [];

    for (var i = 0; i < displayLength; i++) {
      puzzleRowArray.add(buildChoiceDisplay(choiceList[i]));
    }
    return puzzleRowArray;
  }

  CircleAvatar buildChoiceDisplay(Choice choice) {
    return CircleAvatar(
        backgroundColor: Colors.red[600],
        radius: 100,
        child: Text(
          choice.name,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ));
  }


  
}
