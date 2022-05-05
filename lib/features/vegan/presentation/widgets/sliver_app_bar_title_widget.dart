import 'package:flutter/material.dart';

class SliverAppbarTitle extends StatefulWidget {
  final Widget child;

  const SliverAppbarTitle({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _SliverAppbarTitleState createState() {
    return _SliverAppbarTitleState();
  }
}

class _SliverAppbarTitleState extends State<SliverAppbarTitle> {
  ScrollPosition? _position;
  bool _visible = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }

  void _addListener() {
    _position = Scrollable.of(context)?.position;
    _position?.addListener(_positionListener);
    _positionListener();
  }

  void _removeListener() {
    _position?.removeListener(_positionListener);
  }

  void _positionListener() {
    final FlexibleSpaceBarSettings? settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
    final visible =
        settings == null || settings.currentExtent <= settings.minExtent;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
      });
    }
  }

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visible,
      child: widget.child,
    );
  }
}
