import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class LargeFileMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LargeFileMain();
}

class _LargeFileMain extends State<LargeFileMain> {
  // 내려받을 이미지 주소
  final imgUrl =
      'https://images.pexels.com/photos/240040/pexels-photo-240040.jpeg'
      '?auto=compress';
  bool downloading = false; // 지금 내려받는 중인지 확인하는 변수
  var progressString = ""; // 현재 얼마나 내려받았는지 표시하는 변수
  String file = ""; // 내려받은 파일


  @override
  Widget build(BuildContext context) {
    return null;
  }

  Future<void> downloadFile() async {
    Dio dio = Dio();

    try {
      var dir = await getApplicationDocumentsDirectory();
      await dio.download(imgUrl, '${dir.path}/myimage.jpg',
        onReceiveProgress: (rec, total) {
          print('Rec: $rec, Total: $total');
          file = '${dir.path}/myimage.jpg';
          setState(() {
            downloading = true;
            progressString = ((rec / total) * 100).toStringAsFixed(0) + '%';
          });
        });
    } catch (e) {
      print(e);
    }

    setState(() {
      downloading = false;
      progressString = 'Completed';
    });
    print('Download completed');

  }

}