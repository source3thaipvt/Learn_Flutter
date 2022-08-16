import 'package:flutter/foundation.dart';

class Data {
  String data;
  Data(this.data);

  Future<Data> loadDataByClick() async {
    await Future.delayed(const Duration(seconds: 1));
    data = 'New data from server,\ntriggered by click button sau 1s';
    debugPrint('In data $data');
    return Data(data);
  }
}
