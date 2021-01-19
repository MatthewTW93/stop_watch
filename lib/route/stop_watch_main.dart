

import 'package:flutter/material.dart';
import 'package:stop_watch/bloc/stop_watch_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StopWatchMain extends StatefulWidget {

  @override
  _StopWatchMainState createState() => _StopWatchMainState();
}

class _StopWatchMainState extends State<StopWatchMain> {

  @override
  Widget build(BuildContext context) {
    final state = context.select((StopWatchBloc bloc) => bloc.state);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: FittedBox(
                fit: BoxFit.fill,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "${state.secondCounter < 10 ? "0${state.secondCounter}" : state.secondCounter}",
                      style: TextStyle(
                        fontSize: 120,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                        fontSize: 120,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "${state.centiSecondCounter < 10 ? "0${state.centiSecondCounter}" : state.centiSecondCounter}", // todo add leading 0
                      style: TextStyle(
                        fontSize: 120,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                  child: Text(
                    state.isPaused ? "Start" : "Stop",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  color: state.isPaused ? Colors.green : Colors.red,
                  onPressed: () {
                    if (state.isPaused) {
                      context.read<StopWatchBloc>().add(StartEvent());
                    } else {
                      context.read<StopWatchBloc>().add(StopEvent());
                    }
                  },
                ),
                RaisedButton(
                  child: Text(
                    "Reset",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  color: Colors.orange,
                  onPressed: () {
                    context.read<StopWatchBloc>().add(ResetEvent());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}