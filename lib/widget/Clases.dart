import 'package:calendario_prueba/model/ContainerRecreo.dart';
import 'package:calendario_prueba/model/Cuadro.dart';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';

class WidgetCuadro extends StatefulWidget {
  WidgetCuadro({Key key, this.item}) : super(key: key);
  final Cuadro item;

  @override
  _CuadroWidgetState createState() => _CuadroWidgetState();
}

class _CuadroWidgetState extends State<WidgetCuadro> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          child: Container(
            width: 60,
            height: 58,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                      '${widget.item.profesor} \n${widget.item.asignatura}'),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: widget.item.color,
                border: new Border.all(color: Colors.black)),
          ),
        ),
      ],
    );
  }
}

class WidgetRecreo extends StatefulWidget {
  WidgetRecreo({Key key, this.item}) : super(key: key);
  final Recreo item;

  @override
  _RecreoWidgetState createState() => _RecreoWidgetState();
}

class _RecreoWidgetState extends State<WidgetRecreo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 70,
          height: 68,
          child: Align(
            alignment: Alignment.center,
            child: Text('${widget.item.recreo}'),
          ),
        )
      ],
    );
  }
}
