import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp>
    with TickerProviderStateMixin {
  double _width = 200;
  double _height = 50;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  double targetValue = 24.0;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  late final AnimationController _animationController = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedContainer Demo'),
        ),
        body: Column(
          children: [
            Center(
              child: AnimatedContainer(
                /// Implicit animation
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: _borderRadius,
                ),
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              ),
            ),

            /// Tween animation
            // TweenAnimationBuilder<double>(
            //   tween: Tween<double>(begin: 0, end: targetValue),
            //   duration: const Duration(seconds: 1),
            //   builder: (BuildContext context, double size, Widget? child) {
            //     return IconButton(
            //       iconSize: size,
            //       color: Colors.blue,
            //       icon: child!,
            //       onPressed: () {
            //         setState(() {
            //           targetValue = targetValue == 24.0 ? 100.0 : 24.0;
            //         });
            //       },
            //     );
            //   },
            //   child: const Icon(Icons.aspect_ratio),
            // ),
            // //
            // TweenAnimationBuilder(
            //   tween: IntTween(begin: 0, end: 2135131351),
            //   duration: const Duration(seconds: 20),
            //   builder: (BuildContext context, int i, Widget? child) {
            //     return Text(
            //       '$i m/s',
            //       style: const TextStyle(fontSize: 20),
            //     );
            //   },
            //   child: const Icon(
            //     Icons.aspect_ratio,
            //   ),
            // ),
            //
            // /// Build in Explicit animation
            // RotationTransition(
            //   turns: _animation,
            //   child: const Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: FlutterLogo(size: 150.0),
            //   ),
            // ),

            // /// Animated builder
            AnimatedBuilder(
              animation: _animationController,
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.green,
                child: const Center(
                  child: Text('Whee!'),
                ),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(500).toDouble();
              _height = random.nextInt(300).toDouble();
              _width = 50;
              _height = 50;
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
