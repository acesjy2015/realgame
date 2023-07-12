import 'package:flutter/material.dart';
import 'card.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 30),
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
                  const Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Flexible(
                    flex: 1,
                    child: SelectCard(
                      line: 'dml',
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
