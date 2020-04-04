import 'package:flutter/material.dart';

Color c = const Color(0xFF42A5F5);

  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(c, Icons.arrow_back, 'IZQUIERDA'),
        _buildButtonColumn(c, Icons.arrow_upward, 'ADELANTE'),
        _buildButtonColumn(c, Icons.arrow_forward, 'DERECHA'),
        _buildButtonColumn(c, Icons.arrow_downward, 'ATRÁS'),
      ],
    ),
  );

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}


