import 'package:flutter/material.dart';

// 중복되는 코드는 component에 정리
class NumberRow extends StatelessWidget {
  // shift + F6로 관련된 변수명을 한꺼번에 수정할 수 있음
  final int number;

  const NumberRow({
    required this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: number
          .toString()
          .split('')
          .map(
            (e) => Image.asset(
              'asset/img/$e.png',
              width: 50.0,
              height: 70.0,
            ),
          )
          .toList(),
    );
  }
}
