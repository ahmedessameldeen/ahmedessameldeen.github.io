import 'package:flutter/material.dart';

class FadeInUp extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final Curve curve;
  final double offset;

  const FadeInUp({
    required this.child,
    this.duration = const Duration(milliseconds: 800),
    this.curve = Curves.easeOut,
    this.offset = 40.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 1.0, end: 0.0),
      duration: duration,
      curve: curve,
      builder: (context, value, child) => Opacity(
        opacity: 1 - value,
        child: Transform.translate(
          offset: Offset(0, value * offset),
          child: child,
        ),
      ),
      child: child,
    );
  }
}

class ScaleInAnimation extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Curve curve;

  const ScaleInAnimation({
    required this.child,
    this.duration = const Duration(milliseconds: 600),
    this.delay = Duration.zero,
    this.curve = Curves.easeOut,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: duration,
      curve: curve,
      builder: (context, value, child) => Transform.scale(
        scale: value,
        child: Opacity(
          opacity: value,
          child: child,
        ),
      ),
      child: child,
    );
  }
}

class HoverScaleButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;
  final double scale;

  const HoverScaleButton({
    required this.child,
    required this.onTap,
    this.scale = 1.05,
    super.key,
  });

  @override
  State<HoverScaleButton> createState() => _HoverScaleButtonState();
}

class _HoverScaleButtonState extends State<HoverScaleButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: widget.scale).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _controller.forward(),
      onExit: (_) => _controller.reverse(),
      child: GestureDetector(
        onTap: widget.onTap,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: widget.child,
        ),
      ),
    );
  }
}

class StaggeredAnimation extends StatelessWidget {
  final List<Widget> children;
  final Duration staggerDuration;
  final Duration duration;

  const StaggeredAnimation({
    required this.children,
    this.staggerDuration = const Duration(milliseconds: 100),
    this.duration = const Duration(milliseconds: 600),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        children.length,
        (index) => TweenAnimationBuilder<double>(
          tween: Tween(begin: 1.0, end: 0.0),
          duration: duration,
          curve: Curves.easeOut,
          builder: (context, value, child) => Opacity(
            opacity: 1 - value,
            child: Transform.translate(
              offset: Offset(0, value * 30),
              child: child,
            ),
          ),
          child: children[index],
        ),
      ),
    );
  }
}
