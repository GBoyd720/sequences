import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'choice.dart';

part 'puzzle.freezed.dart';

@freezed
class Puzzle with _$Puzzle {
  const factory Puzzle.emptyPuzzle({
    required String name,
  }) = EmptyPuzzle;
  const factory Puzzle.sequencePuzzle({
    required String name,
    required List<Choice> challenge,
    required Set<Choice> choices,
    int currentChallenge,
  }) = SequencePuzzle;

  int get currentChallenge => currentChallenge;

  get challenge => challenge;

  Set<Choice> get choices => choices;
}
