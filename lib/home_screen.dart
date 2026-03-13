import 'package:flutter/material.dart';
import 'package:calculator_clone/components/my_button.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  void equalPress() {
    String finalUserInput = userInput.replaceAll('x', '*');

    // ignore: deprecated_member_use
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    // ignore: deprecated_member_use
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);

    setState(() {
      answer = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput,
                          style: const TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          answer,
                          style: const TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(
                            title: 'AC',
                            onPress: () {
                              setState(() {
                                userInput = '';
                                answer = '';
                              });
                            },
                          ),
                          MyButton(
                            title: '+/-',
                            onPress: () {},
                          ),
                          MyButton(
                            title: '%',
                            onPress: () {},
                          ),
                          MyButton(
                            title: '/',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              setState(() {
                                userInput += '/';
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(
                            title: '7',
                            onPress: () {
                              setState(() {
                                userInput += '7';
                              });
                            },
                          ),
                          MyButton(
                            title: '8',
                            onPress: () {
                              setState(() {
                                userInput += '8';
                              });
                            },
                          ),
                          MyButton(
                            title: '9',
                            onPress: () {
                              setState(() {
                                userInput += '9';
                              });
                            },
                          ),
                          MyButton(
                            title: 'x',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              setState(() {
                                userInput += 'x';
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(
                            title: '4',
                            onPress: () {
                              setState(() {
                                userInput += '4';
                              });
                            },
                          ),
                          MyButton(
                            title: '5',
                            onPress: () {
                              setState(() {
                                userInput += '5';
                              });
                            },
                          ),
                          MyButton(
                            title: '6',
                            onPress: () {
                              setState(() {
                                userInput += '6';
                              });
                            },
                          ),
                          MyButton(
                            title: '-',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              setState(() {
                                userInput += '-';
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(
                            title: '1',
                            onPress: () {
                              setState(() {
                                userInput += '1';
                              });
                            },
                          ),
                          MyButton(
                            title: '2',
                            onPress: () {
                              setState(() {
                                userInput += '2';
                              });
                            },
                          ),
                          MyButton(
                            title: '3',
                            onPress: () {
                              setState(() {
                                userInput += '3';
                              });
                            },
                          ),
                          MyButton(
                            title: '+',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              setState(() {
                                userInput += '+';
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          MyButton(
                            title: '0',
                            onPress: () {
                              setState(() {
                                userInput += '0';
                              });
                            },
                          ),
                          MyButton(
                            title: '.',
                            onPress: () {
                              setState(() {
                                userInput += '.';
                              });
                            },
                          ),
                          MyButton(
                            title: 'DEL',
                            onPress: () {
                              setState(() {
                                if (userInput.isNotEmpty) {
                                  userInput = userInput.substring(0, userInput.length - 1);
                                }
                              });
                            },
                          ),
                          MyButton(
                            title: '=',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              equalPress();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
