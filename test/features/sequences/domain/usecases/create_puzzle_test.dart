import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sequences/core/error/failures.dart';
import 'package:sequences/core/usecases/usecase.dart';
import 'package:sequences/features/sequences/domain/entities/choice.dart';
import 'package:sequences/features/sequences/domain/entities/puzzle.dart';

import 'package:sequences/features/sequences/domain/usecases/create_puzzle.dart';

void main() {
  late final Choice sample;
  late final UseCase useCase;

  setUpAll(() {
    sample = Choice.numberChoice(name: 'One', theNumber: 1);
    useCase = CreatePuzzle("Default");
  });

  group('Puzzle', () {
    test(
      'should create puzzle failure',
      () async {
        // sampleChoice = Choice.numberChoice(name: 'One', theNumber: 1);
        Params params =
            Params(challengeSize: 0, numberOfChoices: -1, sampleChoice: sample);
        final result = await useCase(params);
        expect(result, Left(PuzzleFailure()));
      },
    );

    test(
      'should create a default puzzle',
      () async {
        Params params =
            Params(challengeSize: 0, numberOfChoices: 0, sampleChoice: sample);
        final result = await useCase(params);
        result.fold(
          (failure) => expect(result, Right(Puzzle)),
          (puzzle) => expect(puzzle.name, equals('Default')),
        );
      },
    );

    test(
      'should validate correct number of puzzle choices',
      () async {
        int testSize = 10;
        Params params = Params(
            challengeSize: 0, numberOfChoices: testSize, sampleChoice: sample);
        final result = await useCase(params);
        result.fold(
          (failure) => expect(result, Right(Puzzle)),
          (puzzle) => expect(puzzle.choices.length, testSize),
        );
      },
    );

    test(
      'should validate correct number of puzzle challenges',
      () async {
        int challengeSize = 6;
        Params params = Params(
            challengeSize: challengeSize, numberOfChoices: 0, sampleChoice: sample);
        final result = await useCase(params);
        result.fold(
          (failure) => expect(result, Right(Puzzle)),
          (puzzle) => expect(puzzle.challenge.length, challengeSize),
        );
      },
    );
  });
}
