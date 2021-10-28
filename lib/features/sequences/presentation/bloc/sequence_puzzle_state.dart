import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sequences/features/sequences/domain/entities/puzzle.dart';

@immutable
abstract class SequencePuzzleState extends Equatable {
  

  @override
  List<Object> get props => [];
}

class InitialState extends SequencePuzzleState {}

class ShowChallenge extends SequencePuzzleState {
  final Puzzle puzzle;
  ShowChallenge({required this.puzzle});

  @override
  List<Object> get props => [puzzle];
  }


class CompareChoice extends SequencePuzzleState {}

class NotifyWrong extends SequencePuzzleState {}

class AdvancePuzzle extends SequencePuzzleState {
  final Puzzle puzzle;

  AdvancePuzzle({required this.puzzle});

  @override
  List<Object> get props => [puzzle];
}

class PuzzleSuccess extends SequencePuzzleState {}

class PuzzlesSummary extends SequencePuzzleState {}

class ShowPuzzle extends SequencePuzzleState {
  final Puzzle puzzle;

  ShowPuzzle({required this.puzzle});

  @override
  List<Object> get props => [puzzle];
}

class Error extends SequencePuzzleState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}
