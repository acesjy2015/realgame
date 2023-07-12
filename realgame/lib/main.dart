/*
import 'package:flutter/material.dart';
import 'card.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Game'),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  /* 이 부분은 이미지 부분 */
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.yellow),
                      child: const Center(
                        child: Text('Hello'),
                      ),
                    ),
                  ),

                  /* 이 부분은 문장 부분 */
                  Flexible(
                    flex: 1,
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 20,
                      strutStyle: const StrutStyle(fontSize: 16),
                      text: const TextSpan(
                        text: ' please wait now loading... please wait ... ',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  /* 이 부분은 선택지 부분 */
                  const Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        SelectCard(line: 'Option 1'),
                        SelectCard(line: 'Option 2'),
                        SelectCard(line: 'Option 3'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'card.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: AppBar(
            centerTitle: true,
            title: const Text(""),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        ),

        //-------------------------------------------------------------------------------------------
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                  decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/testimage.jpg'),
                ),
              )),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "마트를 운영 중인 은우 씨가 말했습니다.\n\n\"오늘도 배달 고맙다! 난 아직도 저 AI가 말썽을 부리진 않는지 감시해야 해서 말이다. 이 참에 물건 하나 챙겨가지 안으련? 새 물건이 들어왔거든. 믈론 기계 부품은 없지만 그나마 쓸모는 있을 지도 모르지?\"",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(color: Colors.green),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          SelectCard(line: "약을 받는다."),
                          SizedBox(
                            height: 3,
                          ),
                          SelectCard(line: "음식 캔을 받는다."),
                          SizedBox(
                            height: 3,
                          ),
                          SelectCard(line: "물을 받는다."),
                          SizedBox(
                            height: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
