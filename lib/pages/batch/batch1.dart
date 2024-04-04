import 'package:digital_library/global/color.dart';
import 'package:digital_library/widgets/sub_batch_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BatchOne extends StatefulWidget {
  const BatchOne({super.key});

  @override
  State<BatchOne> createState() => _BatchOneState();
}

class _BatchOneState extends State<BatchOne> {
  bool openPage = false;
  @override
  Widget build(BuildContext context) {
    return SubBatchTabsWidget();
  }
}
