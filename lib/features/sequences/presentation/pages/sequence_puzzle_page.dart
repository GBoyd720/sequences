import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sequences/features/sequences/presentation/bloc/sequence_puzzle_bloc.dart';
import 'package:sequences/features/sequences/presentation/bloc/sequence_puzzle_state.dart';
import 'package:sequences/features/sequences/presentation/widgets/loading_widget.dart';
import 'package:sequences/features/sequences/presentation/widgets/message_display.dart';
import 'package:sequences/features/sequences/presentation/widgets/puzzle_controls.dart';
import 'package:sequences/features/sequences/presentation/widgets/puzzle_display.dart';

import '../../../../injection_container.dart';

class SequencePuzzlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sequence Puzzle'),
      ),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  BlocProvider<SequencePuzzleBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<SequencePuzzleBloc>(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              // Top half
              BlocBuilder<SequencePuzzleBloc, SequencePuzzleState>(
                builder: (context, state) {
                  if (state is InitialState) {
                    return MessageDisplay(
                      message: 'Initial',
                    );
                  } else if (state is ShowChallenge) {
                    return LoadingWidget();
                  } else if (state is ShowPuzzle) {
                    return PuzzleDisplay(puzzle: state.puzzle);
                  } else if (state is Error) {
                    return MessageDisplay(
                      message: state.message,
                    );
                  }
                  return MessageDisplay(message: 'unexpected State');
                },
              ),
              SizedBox(height: 20),
              // Bottom half
              PuzzleControls()
            ],
          ),
        ),
      ),
    );
  }
}
