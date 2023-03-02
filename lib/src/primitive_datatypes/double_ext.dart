import 'package:extensive_ext/extensive_ext.dart';

extension EXTDouble on double {
  double get toRadians => this * (pi / 180);

  double get toDegrees => this * (180 / pi);

  double get toPositive => this < 0 ? this * -1 : this;

  double get toNegative => this > 0 ? this * -1 : this;

  double get toAbsolute => this < 0 ? this * -1 : this;

  double get toRounded => roundToDouble();

  double get toCeiled => ceilToDouble();

  double get toFloored => floorToDouble();

  double get toTruncated => truncateToDouble();

  int get toInt => this.toInt();

  double aspectRatio(double ratio) {
    return this * ratio;
  }

  double get percent {
    return this / 100;
  }
}
