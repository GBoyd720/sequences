import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sequences/features/sequences/presentation/bloc/sequence_puzzle_bloc.dart';
import 'package:sequences/features/sequences/presentation/bloc/sequence_puzzle_event.dart';

class PuzzleControls extends StatefulWidget {
  const PuzzleControls({
    Key? key,
  }) : super(key: key);

  @override
  _PuzzleControlsState createState() => _PuzzleControlsState();
}

class _PuzzleControlsState extends State<PuzzleControls> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                child: Text('Make Puzzle'),
                onPressed: dispatchPuzzle,
              ),
            ),
          ],
        )
      ],
    );
  }

  void dispatchPuzzle() {
    controller.clear();
    BlocProvider.of<SequencePuzzleBloc>(context).add(PuzzleEvent.Create);
  }
}
