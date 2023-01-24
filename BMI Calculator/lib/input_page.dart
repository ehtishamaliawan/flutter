import 'package:fit_bmi/result_page.dart';
import 'package:flutter/material.dart';

import 'RepeatContainerCodeFile.dart';
import 'RepeatICONnTEXTFile.dart';

const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectGender = Gender.male;
  int sliderHeight = 180;
  int sliderWeight = 60;
  int sliderAge = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "FIT BMI CALCULATOR",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF0A0E21),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender = Gender.male;
                        });
                      },
                      child: RepeatContainerCode(
                        colors: selectGender == Gender.male
                            ? activeColor
                            : deActiveColor,
                        cardWidget: RepeatICONnTEXT(
                          iconData: Icons.male,
                          label: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      child: RepeatContainerCode(
                        colors: selectGender == Gender.female
                            ? activeColor
                            : deActiveColor,
                        cardWidget: RepeatICONnTEXT(
                          iconData: Icons.female,
                          label: "FEMALE",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RepeatContainerCode(
                colors: Color(0xFF1D1E33),
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style:
                          TextStyle(fontSize: 30.0, color: Color(0xFF8D8E98)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$sliderHeight",
                          style: TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ],
                    ),
                    Slider(
                      value: sliderHeight.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          sliderHeight = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: RepeatContainerCode(
                        colors: Color(0xFF1D1E33),
                        cardWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("WEIGHT"),
                            Text(
                              sliderWeight.toString(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      if (sliderWeight > 1) {
                                        sliderWeight--;
                                      }
                                    });
                                  },
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    height: 56,
                                    width: 56,
                                  ),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4E5e),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                RawMaterialButton(
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      sliderWeight++;
                                    });
                                  },
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    height: 56,
                                    width: 56,
                                  ),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4E5e),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    child: RepeatContainerCode(
                        colors: Color(0xFF1D1E33),
                        cardWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("AGE"),
                            Text(
                              sliderAge.toString(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      if (sliderAge > 1) {
                                        sliderAge--;
                                      }
                                    });
                                  },
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    height: 56,
                                    width: 56,
                                  ),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4E5e),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                RawMaterialButton(
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      sliderAge++;
                                    });
                                  },
                                  elevation: 6.0,
                                  constraints: BoxConstraints.tightFor(
                                    height: 56,
                                    width: 56,
                                  ),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF4C4E5e),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResultPage()),
                );
              },
              child: Container(
                color: Color(0xFFEB1555),
                height: 80.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
                child: Center(child: Text("Calculate")),
              ),
            ),
          ],
        ));
  }
}
