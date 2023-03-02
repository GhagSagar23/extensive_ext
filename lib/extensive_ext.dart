library extensive_ext;

import 'package:flutter/material.dart';

import './src/index.dart';

export 'package:flutter/material.dart';
export 'package:flutter/widgets.dart';
export 'package:http/http.dart';

export './src/index.dart';

class ExtensiveExt {
  static const String version = '0.0.1';

  void init(BuildContext context) {
    EXTSizeConfig.init(context);
  }
}
