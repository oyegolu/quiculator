import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final computationController =
      TextEditingController(); // coz all that's gonna change is textFiled

  // to set values in the textField from the button we gonna define a method

  setValue(String val) {
    String inputText = computationController.text;

    switch (val) {
      case 'AC':
        computationController.clear();
        break;
      case 'C':
        computationController.text =
            inputText.substring(0, inputText.length - 1);
        break;
      case '=':
        compute();
        break;
      case '+' || '-' || 'X' || '/' || '%':
       replaceJunk(inputText, val);
       break;
      // case '+':
      //   computationController.text =
      //       lc == '+' || lc == '-' || lc == '*' || lc == '/'
      //           ? inputText.substring(0, inputText.length - 1) + val
      //           : inputText + val;
      //   break;
      // if( lc == '+' || lc == '-' || lc == '*' || lc == '/'){
      //   computationController.text = inputText.substring(0,inputText.length-1) + val;
      // }
      // else {
      //   computationController.text += val;
      // }
      // case '+' || '-' || 'X' ||'/':
      // if( lc == '+' || lc == '-' || lc == '*' || lc == '/'){
      // computationController.text = inputText.substring(0,inputText.length-1);
      // setValue(val);
      // }
      // else{
      //   computationController.text += val;
      // }
      default:
        computationController.text += val;
        break;
    }
    computationController.selection = TextSelection.fromPosition(
        TextPosition(offset: computationController.text.length));
  }

  void compute() {
    // interpret the method we got from our function tree package //
    computationController.text =
        computationController.text.interpret().toString();
  }
  void replaceJunk(String inputText, String val){
    String value = val == 'X' ? '*' : val;
    String lc = computationController.text.characters.last;
    computationController.text =  lc == '+' || lc == '-' || lc == '*' || lc == '/' || lc == '%'
              ? inputText.substring(0, inputText.length - 1) + value
              : inputText + value;
  }

  @override
  void dispose() {
    super.dispose();
    computationController.dispose();
  }
}
