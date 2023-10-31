import 'package:flutter/material.dart';
import 'package:quiculator/constants/colors.dart';
import 'package:quiculator/screens/widgets_data.dart';
import '../widgets/TextFeild.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: appColors.backGroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Quiculator'),
        elevation: 5.0,
        backgroundColor: appColors.secondary2Color,
      ),
      body: Column(
        children: [
          const CstmTextFeild(),
          Spacer(),
          Container(
              height: screenHeight * 0.6,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: appColors.primaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              ),
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
                                height: screenHeight * 0.04,
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
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: appColors.secondaryColor),
                          width: 60,
                          height: 140,
                          child: const Center(
                              child: Text(
                            '=',
                            style: TextStyle(fontSize: 30.0),
                          )),
                        )
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
