import 'package:extensive_ext/extensive_ext.dart';

extension M7ResponseExt on Response {
  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = {
      "API": request?.url.toString(),
      "HTTP-Method": request?.method,
    };
    if (headers["Authorization"] != null) {
      data.addAll({
        "Authorization": headers["Authorization"],
      });
    }
    return data;
  }
}
