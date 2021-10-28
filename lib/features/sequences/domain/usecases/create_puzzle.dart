import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:sequences/core/error/failures.dart';
import 'package:sequences/core/usecases/usecase.dart';
import 'package:sequences/features/sequences/domain/entities/choice.dart';
import 'package:sequences/features/sequences/domain/entities/puzzle.dart';

class CreatePuzzle implements UseCase<Puzzle, Params> {
  final String name;

  CreatePuzzle([this.name = 'DefaultPuzzle']);

  @override
  Future<Either<Failure, Puzzle>> call(Params params) async {
    final puzzleOrFailure = await generatePuzzle(
        params.challengeSize, params.numberOfChoices, params.sampleChoice);
    return puzzleOrFailure;
  }

  Future<Either<Failure, Puzzle>> generatePuzzle(
      int size, int numChoices, Choice sampleChoice) async {
    List<Choice> challenges = [];
    Set<Choice> choiceList = Set();
    if (numChoices == 0) numChoices = 4;
    if (size == 0) size = 3;
    if (numChoices > 0) {
      if (sampleChoice is NumberChoice) {
        choiceList = generateNumbers(numChoices);
      }
      challenges = generateChallenge(size, choiceList);
    }
    if (choiceList.isEmpty)
      return Left(PuzzleFailure());
    else {
      Puzzle puzzle = Puzzle.sequencePuzzle(
          name: this.name, challenge: challenges, choices: choiceList);
      return Right(puzzle);
    }
  }

  Set<Choice> generateNumbers(int count) {
    Set<Choice> choices = Set();
    // generate digits 0-9.
    // Use random digits with no duplicate choices
    //
    Random random = Random(new DateTime.now().millisecondsSinceEpoch);
    for (int i = 0; i < count; i++) {
      bool duplicate = true;
      while (duplicate) {
        int nextNumber = random.nextInt(10);
        Choice choice = createNumberChoice(nextNumber);
        if (choices.add(choice)) {
          duplicate = false;
        }
      }
    }
    //
    //
    return choices;
  }

  Choice createNumberChoice(int num) {
    String numName;
    switch (num) {
      case 0:
        numName = '0';
        break;
      case 1:
        numName = '1';
        break;
      case 2:
        numName = '2';
        break;
      case 3:
        numName = '3';
        break;
      case 4:
        numName = '4';
        break;
      case 5:
        numName = '5';
        break;
      case 6:
        numName = '6';
        break;
      case 7:
        numName = '7';
        break;
      case 8:
        numName = '8';
        break;
      case 9:
        numName = '9';
        break;
      default:
        numName = '?';
        break;
    }
    return Choice.numberChoice(name: numName, theNumber: num);
  }

  Choice createChoice(Choice sample) {
    return Choice.numberChoice(name: 'One', theNumber: 1);
  }

  List<Choice> generateChallenge(int size, Set<Choice> choices) {
    List<Choice> challenges = [];
    List<Choice> choiceList = choices.toList();
    int numChoices = choices.length;

    Random random = Random(new DateTime.now().millisecondsSinceEpoch);
    for (int i = 0; i < size; i++) {
      int choiceIndex = random.nextInt(numChoices);
      Choice choice = choiceList[choiceIndex];
      challenges.add(choice);
    }

    return challenges;
  }
}

class Params extends Equatable {
  final int challengeSize;
  final int numberOfChoices;
  final Choice sampleChoice;

  Params({
    required this.challengeSize,
    required this.numberOfChoices,
    required this.sampleChoice,
  });

  @override
  List<Object> get props => [challengeSize, numberOfChoices, sampleChoice];
}
