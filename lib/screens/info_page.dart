import 'package:flutter/material.dart';
import 'package:flutterweb/components/q1.dart';
import 'package:flutterweb/components/q2.dart';
import 'package:flutterweb/components/q3.dart';
import 'package:flutterweb/components/q4.dart';
import 'package:flutterweb/components/q5.dart';
import 'package:flutterweb/data.dart';
import 'package:flutterweb/screens/lifeStyle_page.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 132, 255, 1),
        surfaceTintColor: Colors.white,
        title: Image.asset('assets/logo.png',width: 250, height: 250,),
      ),
      backgroundColor: const Color.fromARGB(255, 198, 233, 235),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'STEP 1. 신체 정보 입력',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: Text(
                  '당신은 어떤 사람인가요?',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                          width: width * 0.2,
                          height: height * 0.35,
                          child: Q1()),
                      SizedBox(
                          width: width * 0.2,
                          height: height * 0.28,
                          child: Q2()),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                          width: width * 0.2,
                          height: height * 0.24,
                          child: Q3()),
                      SizedBox(
                          width: width * 0.2,
                          height: height * 0.39,
                          child: Q4()),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: width * 0.23, height: height * 0.63, child: Q5()),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  if (Data.staticQ1 == true &&
                      Data.staticQ2 == true &&
                      Data.staticQ3 == true &&
                      Data.staticQ4 == true &&
                      Data.staticQ5 == true) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LifeStylePage(),
                        ));
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text('정보를 입력해야 넘어갈 수 있습니다'),
                        );
                      },
                    );
                  }
                },
                child: SizedBox(
                  width: width * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('문항보기 ',
                          style: TextStyle(
                              fontSize: width * 0.015,
                              fontWeight: FontWeight.w700)),
                      Icon(
                        Icons.arrow_circle_right_outlined,
                        size: width * 0.018,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
