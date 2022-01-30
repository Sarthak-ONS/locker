import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider extends ChangeNotifier {
  String? userInput = "0";

  String answer = "";

  addValuetoUserInput(value) {
    userInput = userInput! + value;
    notifyListeners();
  }

  deleteValueFromUserInput() {
    if (userInput != null && userInput!.isNotEmpty) {
      userInput = userInput!.substring(0, userInput!.length - 1);
    }
    if (userInput!.isEmpty) {
      userInput = '0';
    }
    notifyListeners();
  }

  allClearInputValues() {
    userInput = '0';
    answer = '';
    notifyListeners();
  }

  void equalPressed() {
    try {
      String finaluserinput = userInput!;
      finaluserinput = userInput!.replaceAll('x', '*');
      Parser p = Parser();
      Expression exp = p.parse(finaluserinput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      answer = eval.toString();
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }
}
