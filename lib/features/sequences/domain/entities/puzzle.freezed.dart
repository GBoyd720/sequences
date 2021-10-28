// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'puzzle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PuzzleTearOff {
  const _$PuzzleTearOff();

  EmptyPuzzle emptyPuzzle({required String name}) {
    return EmptyPuzzle(
      name: name,
    );
  }

  SequencePuzzle sequencePuzzle(
      {required String name,
      required List<Choice> challenge,
      required Set<Choice> choices,
      int currentChallenge = 0}) {
    return SequencePuzzle(
      name: name,
      challenge: challenge,
      choices: choices,
      currentChallenge: currentChallenge,
    );
  }
}

/// @nodoc
const $Puzzle = _$PuzzleTearOff();

/// @nodoc
mixin _$Puzzle {
  String get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) emptyPuzzle,
    required TResult Function(String name, List<Choice> challenge,
            Set<Choice> choices, int currentChallenge)
        sequencePuzzle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? emptyPuzzle,
    TResult Function(String name, List<Choice> challenge, Set<Choice> choices,
            int currentChallenge)?
        sequencePuzzle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyPuzzle value) emptyPuzzle,
    required TResult Function(SequencePuzzle value) sequencePuzzle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyPuzzle value)? emptyPuzzle,
    TResult Function(SequencePuzzle value)? sequencePuzzle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PuzzleCopyWith<Puzzle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleCopyWith<$Res> {
  factory $PuzzleCopyWith(Puzzle value, $Res Function(Puzzle) then) =
      _$PuzzleCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PuzzleCopyWithImpl<$Res> implements $PuzzleCopyWith<$Res> {
  _$PuzzleCopyWithImpl(this._value, this._then);

  final Puzzle _value;
  // ignore: unused_field
  final $Res Function(Puzzle) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $EmptyPuzzleCopyWith<$Res> implements $PuzzleCopyWith<$Res> {
  factory $EmptyPuzzleCopyWith(
          EmptyPuzzle value, $Res Function(EmptyPuzzle) then) =
      _$EmptyPuzzleCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class _$EmptyPuzzleCopyWithImpl<$Res> extends _$PuzzleCopyWithImpl<$Res>
    implements $EmptyPuzzleCopyWith<$Res> {
  _$EmptyPuzzleCopyWithImpl(
      EmptyPuzzle _value, $Res Function(EmptyPuzzle) _then)
      : super(_value, (v) => _then(v as EmptyPuzzle));

  @override
  EmptyPuzzle get _value => super._value as EmptyPuzzle;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(EmptyPuzzle(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$EmptyPuzzle with DiagnosticableTreeMixin implements EmptyPuzzle {
  const _$EmptyPuzzle({required this.name});

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Puzzle.emptyPuzzle(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Puzzle.emptyPuzzle'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyPuzzle &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $EmptyPuzzleCopyWith<EmptyPuzzle> get copyWith =>
      _$EmptyPuzzleCopyWithImpl<EmptyPuzzle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) emptyPuzzle,
    required TResult Function(String name, List<Choice> challenge,
            Set<Choice> choices, int currentChallenge)
        sequencePuzzle,
  }) {
    return emptyPuzzle(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? emptyPuzzle,
    TResult Function(String name, List<Choice> challenge, Set<Choice> choices,
            int currentChallenge)?
        sequencePuzzle,
    required TResult orElse(),
  }) {
    if (emptyPuzzle != null) {
      return emptyPuzzle(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyPuzzle value) emptyPuzzle,
    required TResult Function(SequencePuzzle value) sequencePuzzle,
  }) {
    return emptyPuzzle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyPuzzle value)? emptyPuzzle,
    TResult Function(SequencePuzzle value)? sequencePuzzle,
    required TResult orElse(),
  }) {
    if (emptyPuzzle != null) {
      return emptyPuzzle(this);
    }
    return orElse();
  }
}

abstract class EmptyPuzzle implements Puzzle {
  const factory EmptyPuzzle({required String name}) = _$EmptyPuzzle;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyPuzzleCopyWith<EmptyPuzzle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SequencePuzzleCopyWith<$Res> implements $PuzzleCopyWith<$Res> {
  factory $SequencePuzzleCopyWith(
          SequencePuzzle value, $Res Function(SequencePuzzle) then) =
      _$SequencePuzzleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<Choice> challenge,
      Set<Choice> choices,
      int currentChallenge});
}

/// @nodoc
class _$SequencePuzzleCopyWithImpl<$Res> extends _$PuzzleCopyWithImpl<$Res>
    implements $SequencePuzzleCopyWith<$Res> {
  _$SequencePuzzleCopyWithImpl(
      SequencePuzzle _value, $Res Function(SequencePuzzle) _then)
      : super(_value, (v) => _then(v as SequencePuzzle));

  @override
  SequencePuzzle get _value => super._value as SequencePuzzle;

  @override
  $Res call({
    Object? name = freezed,
    Object? challenge = freezed,
    Object? choices = freezed,
    Object? currentChallenge = freezed,
  }) {
    return _then(SequencePuzzle(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      challenge: challenge == freezed
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      choices: choices == freezed
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as Set<Choice>,
      currentChallenge: currentChallenge == freezed
          ? _value.currentChallenge
          : currentChallenge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$SequencePuzzle with DiagnosticableTreeMixin implements SequencePuzzle {
  const _$SequencePuzzle(
      {required this.name,
      required this.challenge,
      required this.choices,
      this.currentChallenge = 0});

  @override
  final String name;
  @override
  final List<Choice> challenge;
  @override
  final Set<Choice> choices;
  @JsonKey(defaultValue: 0)
  @override
  final int currentChallenge;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Puzzle.sequencePuzzle(name: $name, challenge: $challenge, choices: $choices, currentChallenge: $currentChallenge)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Puzzle.sequencePuzzle'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('challenge', challenge))
      ..add(DiagnosticsProperty('choices', choices))
      ..add(DiagnosticsProperty('currentChallenge', currentChallenge));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SequencePuzzle &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.challenge, challenge) ||
                const DeepCollectionEquality()
                    .equals(other.challenge, challenge)) &&
            (identical(other.choices, choices) ||
                const DeepCollectionEquality()
                    .equals(other.choices, choices)) &&
            (identical(other.currentChallenge, currentChallenge) ||
                const DeepCollectionEquality()
                    .equals(other.currentChallenge, currentChallenge)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(challenge) ^
      const DeepCollectionEquality().hash(choices) ^
      const DeepCollectionEquality().hash(currentChallenge);

  @JsonKey(ignore: true)
  @override
  $SequencePuzzleCopyWith<SequencePuzzle> get copyWith =>
      _$SequencePuzzleCopyWithImpl<SequencePuzzle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) emptyPuzzle,
    required TResult Function(String name, List<Choice> challenge,
            Set<Choice> choices, int currentChallenge)
        sequencePuzzle,
  }) {
    return sequencePuzzle(name, challenge, choices, currentChallenge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? emptyPuzzle,
    TResult Function(String name, List<Choice> challenge, Set<Choice> choices,
            int currentChallenge)?
        sequencePuzzle,
    required TResult orElse(),
  }) {
    if (sequencePuzzle != null) {
      return sequencePuzzle(name, challenge, choices, currentChallenge);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyPuzzle value) emptyPuzzle,
    required TResult Function(SequencePuzzle value) sequencePuzzle,
  }) {
    return sequencePuzzle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyPuzzle value)? emptyPuzzle,
    TResult Function(SequencePuzzle value)? sequencePuzzle,
    required TResult orElse(),
  }) {
    if (sequencePuzzle != null) {
      return sequencePuzzle(this);
    }
    return orElse();
  }
}

abstract class SequencePuzzle implements Puzzle {
  const factory SequencePuzzle(
      {required String name,
      required List<Choice> challenge,
      required Set<Choice> choices,
      int currentChallenge}) = _$SequencePuzzle;

  @override
  String get name => throw _privateConstructorUsedError;
  List<Choice> get challenge => throw _privateConstructorUsedError;
  Set<Choice> get choices => throw _privateConstructorUsedError;
  int get currentChallenge => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SequencePuzzleCopyWith<SequencePuzzle> get copyWith =>
      throw _privateConstructorUsedError;
}
