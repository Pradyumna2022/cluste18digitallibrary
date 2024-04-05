import 'package:digital_library/global/color.dart';
import 'package:digital_library/widgets/student_fee_widget.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: StudentFeeWidget()));
  }
}
