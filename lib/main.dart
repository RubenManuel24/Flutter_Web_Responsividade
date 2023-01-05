import 'package:flutter/material.dart';
import 'package:flutter_web/layout_builder_regras_de_layout.dart';
import 'package:flutter_web/loja_virtual.dart';
import 'package:flutter_web/responsiidade_media_query.dart';
import 'package:flutter_web/responsividade_com_orientation_builder.dart';
import 'package:flutter_web/responsividade_row_e_column_usando_expanded.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LojaVirtual(),
      )
  );
}

