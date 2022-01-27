import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'incommonClass.dart';

class WinScreen extends StatelessWidget {
  static const routName='WinScreen';

  @override
  Widget build(BuildContext context) {
    return IncommonClass('assets/images/winner.png');
  }
}
