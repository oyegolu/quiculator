import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiculator/constants/colors.dart';
import 'package:quiculator/provider/cal_provider.dart';
import 'package:quiculator/screens/widgets_data.dart';
import '../widgets/TextFeild.dart';
import '../widgets/cal_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    const boxDecoratnion = BoxDecoration(
      color: appColors.primaryColor,
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
    );

    return
      // Consumer<CalculatorProvider>(
      // // why we r using consumer widget so to - kill the pain of getter and setter
      // builder: (context,provider,_) {
      //   return
          Scaffold(
          backgroundColor: appColors.backGroundColor,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Quiculator'),
            elevation: 5.0,
            backgroundColor: appColors.secondary2Color,
          ),
          body: Column(
            children: [
              CustomTextField(controller: Provider.of<CalculatorProvider>(context).computationController ),
              const Spacer(),
              Container(
                height: screenHeight * 0.6,
                width: double.infinity,
                decoration: boxDecoratnion,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) => buttonList[index]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 4]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 8]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 12]),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.025,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 15]),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.08),
                          const Button2()
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      // }
    // );
  }
}
