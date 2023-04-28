import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/color.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: maxNumber
                      .toInt()
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
                ),
              ),
              Slider(
                value: maxNumber,
                min: 1000,
                max: 100000,
                onChanged: (double val) {
                  setState(() {
                    // build 재실행해야 Slider가 그려짐
                    maxNumber = val;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // 페이지 이동 시, 데이터를 파라미터로 담아 보내줌
                  Navigator.of(context).pop(maxNumber.toInt());
                },
                child: Text('save'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: RED_COLOR,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
