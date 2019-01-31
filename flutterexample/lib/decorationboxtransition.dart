import 'package:flutter/material.dart';

class DecorationboxExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DecorationState();
  }
}

class DecorationState extends State<DecorationboxExample>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    final colors = <Color>[
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.yellow,
    ];

    // TODO: implement build
    return DecoratedBoxTransition(
      decoration: TweenSequence(colorsToTween(colors).toList())
          .animate(animationController),
      child: const SizedBox.expand(),
    );
  }
}

Iterable<TweenSequenceItem<Decoration>> colorsToTween(
    List<Color> colors) sync* {
  for (int i = 0; i < colors.length - 1; i++) {
    yield TweenSequenceItem<Decoration>(
      tween: DecorationTween(
        begin: BoxDecoration(color: colors[i]),
        end: BoxDecoration(color: colors[i + 1]),
      ),
      weight: 1.0,
    );
  }
}
