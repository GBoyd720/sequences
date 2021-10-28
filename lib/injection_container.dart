import 'package:get_it/get_it.dart';
import 'package:sequences/features/sequences/domain/usecases/create_puzzle.dart';

import 'features/sequences/presentation/bloc/sequence_puzzle_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc
  sl.registerFactory(
    () => SequencePuzzleBloc(
      create: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => CreatePuzzle(sl()));

  //! External
}
