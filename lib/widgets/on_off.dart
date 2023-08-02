import 'package:flutter/material.dart';

class OnOff extends StatefulWidget {
  OnOff({super.key, required this.isOn});
  bool isOn;

  @override
  State<OnOff> createState() => _OnOffState();
}

class _OnOffState extends State<OnOff> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () => setState(() {
          widget.isOn = !widget.isOn;
        }),
        child: Image.asset('images/${widget.isOn ? 'on' : 'off'}.png'),
      ),
    );
  }
}
