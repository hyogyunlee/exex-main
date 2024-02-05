import 'package:flutter/material.dart';
import 'package:flutterweb/screens/info_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    stepBox(String step, String stepTitle) {
      return Container(
        child: Column(
          children: [
            Text(step,
                style: TextStyle(
                    fontSize: width * 0.015, fontWeight: FontWeight.w600)),
            Text(stepTitle,
                style: TextStyle(
                    fontSize: width * 0.01, fontWeight: FontWeight.w600))
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 132, 255, 1),
        surfaceTintColor: Colors.white,
        title: Image.asset('assets/logo.png',width: 250, height: 250,),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(

            image: AssetImage('assets/main.png'),

            alignment: Alignment.center,

          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: Text(
                '헬스테일러 AI 운동 보조식품 추천 서비스',
                style: TextStyle(
                    fontSize: width * 0.03, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                stepBox('step1', '신체 정보 입력'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: width * 0.08,
                    height: height * 0.003,
                    color: Colors.black,
                  ),
                ),
                stepBox('step2', '질병 부작용 설문조사'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: width * 0.08,
                    height: height * 0.003,
                    color: Colors.black,
                  ),
                ),
                stepBox('step3', 'AI 결과 분석')
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InfoPage(),
                    ));
              },
              child: SizedBox(
                width: width * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('분석시작 ',
                        style: TextStyle(
                            fontSize: width * 0.02,
                            fontWeight: FontWeight.w700)),
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      size: width * 0.03,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}
