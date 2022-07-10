import 'dart:async';
import 'package:flutter/material.dart';

class CountDown extends StatefulWidget {
  const CountDown({Key? key}) : super(key: key);

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  Duration duration = Duration();
  Timer? timer;
  bool isCountdown = true;

  @override
  void initState() {
    super.initState();
  }

  void addTime() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      duration = Duration(seconds: seconds);
    });
  }

  void startTime() {
    timer = Timer.periodic(
      Duration(seconds: 1),
      (_) => addTime(),
    );
  }

  void stopTimer() {
    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: buildTime(),
        ),
      );

  Widget buildTime() {
    String twoDigit(int n) => n.toString().padLeft(2, "0");
    final hours = twoDigit(duration.inHours);
    final minutes = twoDigit(duration.inMinutes.remainder(60));
    final seconds = twoDigit(duration.inSeconds.remainder(60));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$hours:$minutes:$seconds',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(79, 79, 79, 1),
          ),
        ),
        buildButton(),
      ],
    );
  }

  Widget buildButton() {
    final isRunning = timer == null ? false : timer!.isActive;
    return isRunning
        ? IconButton(
            onPressed: () {
              stopTimer();
            },
            icon: Icon(Icons.stop_circle_outlined),
          )
        : IconButton(
            onPressed: () {
              startTime();
            },
            icon: Icon(
              Icons.play_arrow_sharp,
            ),
          );
  }
}
