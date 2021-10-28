import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sequences/core/error/failures.dart';
import 'package:sequences/features/sequences/domain/entities/choice.dart';
import 'package:sequences/features/sequences/domain/entities/puzzle.dart';
import 'package:sequences/features/sequences/domain/usecases/create_puzzle.dart';
import 'package:sequences/features/sequences/presentation/bloc/sequence_puzzle_event.dart';
import 'package:sequences/features/sequences/presentation/bloc/sequence_puzzle_state.dart';

class SequencePuzzleBloc extends Bloc<PuzzleEvent, SequencePuzzleState> {
  final CreatePuzzle createPuzzle;
  final Choice sampleChoice = Choice.numberChoice(name: 'One', theNumber: 1);

  SequencePuzzleBloc({
    required CreatePuzzle create,
  })  : createPuzzle = create,
        super(InitialState());

  @override
  Stream<SequencePuzzleState> mapEventToState(
    PuzzleEvent event,
  ) async* {
    switch (event) {
      case PuzzleEvent.Create:
        final failureOrPuzzle = await createPuzzle(Params(
            challengeSize: 0, numberOfChoices: 0, sampleChoice: sampleChoice));
        yield* _eitherShowOrErrorState(failureOrPuzzle);
        break;
      case PuzzleEvent.ShowChallenge:
        // ShowChallenge
        final failureOrPuzzle = await createPuzzle(Params(
            challengeSize: 0, numberOfChoices: 0, sampleChoice: sampleChoice));
        
        ShowChallenge showChallenge = state as ShowChallenge;
        yield* _eitherShowOrErrorState(failureOrPuzzle);
        break;
      case PuzzleEvent.ChoiceMade:
        // TODO: Handle this case.
        break;
      case PuzzleEvent.WrongChoice:
        // TODO: Handle this case.
        break;
      case PuzzleEvent.CorrectChoice:
        // TODO: Handle this case.
        break;
      case PuzzleEvent.PuzzleComplete:
        // TODO: Handle this case.
        break;
      case PuzzleEvent.AllPuzzlesComplete:
        // TODO: Handle this case.
        break;
      case PuzzleEvent.PuzzleSetup:
        // TODO: Handle this case.
        break;
    }
  }


  Stream<SequencePuzzleState> _eitherShowOrErrorState(
    Either<Failure, Puzzle> failureOrPuzzle,
  ) async* {
    yield failureOrPuzzle.fold(
      (failure) => Error(message: mapFailureToMessage(failure)),
      (puzzle) => ShowPuzzle(puzzle: puzzle),
    );
  }

  String mapFailureToMessage(Failure failure) {
    return 'Unexpected error';
  }
}
