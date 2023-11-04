import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final computationController = TextEditingController();        // coz all that's gonna change is textFeild

  // to set values in the textFeild from the button we gonna define a method

  setValue(String val){
    String inputText = computationController.text;
    switch (val){
      case 'C':
        computationController.clear();
        break;
      case 'AC':
        computationController.text = inputText.substring(0,inputText.length-1);
        break;
      case 'X':
        computationController.text += '*';
        break;
      case '=':
        compute();
        break;

      default:
        // TextFeild.text +=  value we got from button
        computationController.text += val;
        break;
    }
    computationController.selection = TextSelection.fromPosition(TextPosition(offset: computationController.text.length));
  }
  void compute() {
    // interpret the method we got from our function tree package //
   computationController.text = computationController.text.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    computationController.dispose();
  }
}
