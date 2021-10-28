import 'dart:html';

import 'package:dartz/dartz.dart';
import 'package:sequences/core/error/failures.dart';
import 'package:sequences/features/sequences/domain/entities/choice.dart';
import 'package:sequences/features/sequences/domain/entities/puzzle.dart';
import 'package:sequences/features/sequences/domain/usecases/create_puzzle.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sequences/features/sequences/presentation/bloc/sequence_puzzle_bloc.dart';
import 'package:sequences/features/sequences/presentation/bloc/sequence_puzzle_event.dart';
import 'package:sequences/features/sequences/presentation/bloc/sequence_puzzle_state.dart';
import 'package:sequences/features/sequences/presentation/widgets/puzzle_display.dart';
import 'sequence_puzzle_bloc_test.mocks.dart';

@GenerateMocks([CreatePuzzle, PuzzleDisplay])
void main() {
  late SequencePuzzleBloc bloc;
  late MockCreatePuzzle mockCreatePuzzle;
  late MockPuzzleDisplay mockPuzzleDisplay;
  late Choice sampleChoice;
  late Params params;
  late CreatePuzzle testPuzzle;

  setUp(() {
    mockCreatePuzzle = MockCreatePuzzle();
    mockPuzzleDisplay = MockPuzzleDisplay();
    sampleChoice = Choice.numberChoice(name: 'One', theNumber: 1);
    bloc = SequencePuzzleBloc(
      create: mockCreatePuzzle,
    );
    testPuzzle = CreatePuzzle();
    params = Params(
        challengeSize: 0, numberOfChoices: 0, sampleChoice: sampleChoice);
  });

  test('initialState should be InitialState', () {
    // assert
    expect(bloc.state, equals(InitialState()));
  });

  group('bloc tests', () {
    test(
      'should call create puzzle when New Puzzle is requested',
      () async {
        // arrange
        //
        //
        PuzzleEvent event = PuzzleEvent.Create;
        when(mockCreatePuzzle(params))
            .thenAnswer((realInvocation) => testPuzzle.call(params));
        // act
        bloc.add(event);
        await untilCalled(mockCreatePuzzle(Params(
            challengeSize: 0, numberOfChoices: 0, sampleChoice: sampleChoice)));
        // assert
        verify(mockCreatePuzzle(Params(
            challengeSize: 0, numberOfChoices: 0, sampleChoice: sampleChoice)));
      },
    );

    test('test event to show next challenge on puzzle', () async {
      //arrange
      Puzzle puzzle = Puzzle.emptyPuzzle(name:"empty");

      Either<Failure, Puzzle> result = await testPuzzle.call(params);
      Puzzle? puzzleMaybe = result.fold(
        (failure) => null,
        (puzzle) => puzzle,
      );
      if (puzzleMaybe != null) {
        puzzle = puzzleMaybe;
      } else {
        TestFailure('no puzzle created');
      }

      when(mockPuzzleDisplay(null, puzzle: puzzle, showAll: true))
          .thenAnswer(PuzzleDisplay(p: puzzle, showAll: true));
      //act
      bloc.add(PuzzleEvent.ShowChallenge);
      await untilCalled(mockShowPuzzle(showParams));
      //assert
      verify(mockShowPuzzle(showParams));
    });

    //   test(
    // // event to show challenge
    //
    //
    //     'should emit [Error] when the input is invalid',
    //     () async {
    //       // arrange
    //       when(mockInputConverter.stringToUnsignedInteger(any))
    //           .thenReturn(Left(InvalidInputFailure()));
    //       // assert later
    //       final expected = [
    //         Empty(),
    //         Error(message: INVALID_INPUT_FAILURE_MESSAGE),
    //       ];
    //       expectLater(bloc, emitsInOrder(expected));
    //       // act
    //       bloc.add(GetTriviaForConcreteNumber(tNumberString));
    //     },
    //   );

    //   test(
    //     'should get data from the concrete use case',
    //     () async {
    //       // arrange
    //       setUpMockInputConverterSuccess();
    //       when(mockGetConcreteNumberTrivia(any))
    //           .thenAnswer((_) async => Right(tNumberTrivia));
    //       // act
    //       bloc.add(GetTriviaForConcreteNumber(tNumberString));
    //       await untilCalled(mockGetConcreteNumberTrivia(any));
    //       // assert
    //       verify(mockGetConcreteNumberTrivia(Params(number: tNumberParsed)));
    //     },
    //   );

    //   test(
    //     'should emit [Loading, Loaded] when data is gotten successfully',
    //     () async {
    //       // arrange
    //       setUpMockInputConverterSuccess();
    //       when(mockGetConcreteNumberTrivia(any))
    //           .thenAnswer((_) async => Right(tNumberTrivia));
    //       // assert later
    //       final expected = [
    //         Empty(),
    //         Loading(),
    //         Loaded(trivia: tNumberTrivia),
    //       ];
    //       expectLater(bloc, emitsInOrder(expected));
    //       // act
    //       bloc.add(GetTriviaForConcreteNumber(tNumberString));
    //     },
    //   );

    //   test(
    //     'should emit [Loading, Error] when getting data fails',
    //     () async {
    //       // arrange
    //       setUpMockInputConverterSuccess();
    //       when(mockGetConcreteNumberTrivia(any))
    //           .thenAnswer((_) async => Left(ServerFailure()));
    //       // assert later
    //       final expected = [
    //         Empty(),
    //         Loading(),
    //         Error(message: SERVER_FAILURE_MESSAGE),
    //       ];
    //       expectLater(bloc, emitsInOrder(expected));
    //       // act
    //       bloc.add(GetTriviaForConcreteNumber(tNumberString));
    //     },
    //   );

    //   test(
    //     'should emit [Loading, Error] with a proper message for the error when getting data fails',
    //     () async {
    //       // arrange
    //       setUpMockInputConverterSuccess();
    //       when(mockGetConcreteNumberTrivia(any))
    //           .thenAnswer((_) async => Left(CacheFailure()));
    //       // assert later
    //       final expected = [
    //         Empty(),
    //         Loading(),
    //         Error(message: CACHE_FAILURE_MESSAGE),
    //       ];
    //       expectLater(bloc, emitsInOrder(expected));
    //       // act
    //       bloc.add(GetTriviaForConcreteNumber(tNumberString));
    //     },
    //   );
    // });

    // group('GetTriviaForRandomNumber', () {
    //   final tNumberTrivia = NumberTrivia(number: 1, text: 'test trivia');

    //   test(
    //     'should get data from the random use case',
    //     () async {
    //       // arrange
    //       when(mockGetRandomNumberTrivia(any))
    //           .thenAnswer((_) async => Right(tNumberTrivia));
    //       // act
    //       bloc.add(GetTriviaForRandomNumber());
    //       await untilCalled(mockGetRandomNumberTrivia(any));
    //       // assert
    //       verify(mockGetRandomNumberTrivia(NoParams()));
    //     },
    //   );

    //   test(
    //     'should emit [Loading, Loaded] when data is gotten successfully',
    //     () async {
    //       // arrange
    //       when(mockGetRandomNumberTrivia(any))
    //           .thenAnswer((_) async => Right(tNumberTrivia));
    //       // assert later
    //       final expected = [
    //         Empty(),
    //         Loading(),
    //         Loaded(trivia: tNumberTrivia),
    //       ];
    //       expectLater(bloc, emitsInOrder(expected));
    //       // act
    //       bloc.add(GetTriviaForRandomNumber());
    //     },
    //   );

    //   test(
    //     'should emit [Loading, Error] when getting data fails',
    //     () async {
    //       // arrange
    //       when(mockGetRandomNumberTrivia(any))
    //           .thenAnswer((_) async => Left(ServerFailure()));
    //       // assert later
    //       final expected = [
    //         Empty(),
    //         Loading(),
    //         Error(message: SERVER_FAILURE_MESSAGE),
    //       ];
    //       expectLater(bloc, emitsInOrder(expected));
    //       // act
    //       bloc.add(GetTriviaForRandomNumber());
    //     },
    //   );

    //   test(
    //     'should emit [Loading, Error] with a proper message for the error when getting data fails',
    //     () async {
    //       // arrange
    //       when(mockGetRandomNumberTrivia(any))
    //           .thenAnswer((_) async => Left(CacheFailure()));
    //       // assert later
    //       final expected = [
    //         Empty(),
    //         Loading(),
    //         Error(message: CACHE_FAILURE_MESSAGE),
    //       ];
    //       expectLater(bloc, emitsInOrder(expected));
    //       // act
    //       bloc.add(GetTriviaForRandomNumber());
    //     },
    //   );
  });
}
