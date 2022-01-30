import 'package:doc_encrypter/Providers/calculator_provider.dart';
import 'package:doc_encrypter/app_colors.dart';
import 'package:doc_encrypter/global_conts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 150),
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: const Text(
              'Calculator',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
        body: Consumer<CalculatorProvider>(
          builder: (context, myCalculator, child) => Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        myCalculator.answer,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        myCalculator.userInput!,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[0],
                        buttontapped: () {
                          myCalculator.allClearInputValues();
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[3],
                        buttontapped: () {
                          myCalculator.deleteValueFromUserInput();
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[2],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('%');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        //  buttonText: buttons[7],
                        buttontapped: () {},
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[4],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('7');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[5],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('8');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[6],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('9');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[7],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('/');
                        },
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[8],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('4');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[9],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('5');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[10],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('6');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[11],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('*');
                        },
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[12],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('1');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[13],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('2');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[14],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('3');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[15],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('-');
                        },
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[16],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('0');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[17],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('.');
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[18],
                        buttontapped: () {
                          //Evaluate Expression
                          myCalculator.equalPressed();
                        },
                        textColor: Colors.black,
                      ),
                      MyButton(
                        color: Colors.white,
                        buttonText: buttons[19],
                        buttontapped: () {
                          myCalculator.addValuetoUserInput('+');
                        },
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  // declaring variables
  final Key? key;
  final Color? color;
  final Color? textColor;
  final String? buttonText;
  final dynamic buttontapped;

  const MyButton(
      {this.color,
      this.textColor,
      this.buttonText,
      this.buttontapped,
      this.key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: buttonText == '=' ? Colors.red : color,
          boxShadow: [
            BoxShadow(
              color: AppColors.mainAppColor,
              offset: const Offset(0.5, 0.5),
              blurRadius: 10,
            )
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Center(
          child: buttonText == null
              ? const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              : Text(
                  buttonText!,
                  style: TextStyle(
                    color: buttonText == '=' ? Colors.white : textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
        ),
      ),
    );
  }
}
