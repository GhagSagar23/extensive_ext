import 'package:extensive_ext/extensive_ext.dart';

extension EXTText on Text {
  Widget withGradient({
    required List<Color> colors,
    Alignment begin = Alignment.topLeft,
    Alignment end = Alignment.bottomRight,
  }) {
    final Gradient gradient = LinearGradient(
      colors: colors,
      begin: begin,
      end: end,
    );
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(
          0,
          0,
          bounds.width,
          bounds.height,
        ),
      ),
      child: this,
    );
  }
}
