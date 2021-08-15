import 'package:flutter/material.dart';
import 'package:json5/json5.dart';

class FatDev extends StatefulWidget {
  final Object? value;
  const FatDev(this.value, {Key? key}) : super(key: key);

  @override
  _FatDevState createState() => _FatDevState();
}

class _FatDevState extends State<FatDev> {
  @override
  Widget build(BuildContext context) {
    final txt = json5Encode(widget.value, space: 4);
    return Text(txt);
  }
}
