import 'dart:math';
import 'package:flutter/material.dart';


class ChangeColorBtn extends StatefulWidget {
  const ChangeColorBtn({super.key});


  @override
  State<ChangeColorBtn> createState() => _ChangeColorBtnState();
}

class _ChangeColorBtnState extends State<ChangeColorBtn> {
  // Default Background Color
  Color colorCode = Colors.green;

  // tạo 1 biến ngẫu nhiên để tạo ra chuỗi màu ngẫu nhiên
  final Random random = Random();

  // hàm generateColor sử dụng Color.fromARGB tạo mã màu ngẫu nhiên trong khoảng 0 -> 256
  // sau khi tạo màu lưu trữ màu trong biến color bằng state
  generateRandomColor() {
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      colorCode = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCode,
      appBar: AppBar(
        title: const Text('Color Change App'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            onPressed: () => generateRandomColor(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12)
            ),
            child: const Text('Change Color',
            style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

