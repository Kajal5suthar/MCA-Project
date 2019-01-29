import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StepperState();
  }
}

class StepperState extends State<StepperExample> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'App',
      home: new Scaffold(
        appBar: new AppBar(),
        body: new Stepper(
            type: StepperType.vertical,
            currentStep: currentStep,
            onStepTapped: (int step) => setState(() => currentStep = step),
            onStepContinue:
                currentStep < 3 ? () => setState(() => currentStep += 1) : null,
            onStepCancel:
                currentStep > 0 ? () => setState(() => currentStep -= 1) : null,
            steps: <Step>[
              new Step(
                title: new Text('order'),
                content: new Text('This is the first step.'),
                isActive: currentStep >= 0,
                state:
                    currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              new Step(
                title: new Text('payment'),
                content: new Text('This is the second step.'),
                isActive: currentStep >= 0,
                state:
                    currentStep >= 1 ? StepState.complete : StepState.disabled,
              ),
              new Step(
                title: new Text('shipping'),
                content: new Text('This is the third step.'),
                isActive: currentStep >= 0,
                state:
                    currentStep >= 2 ? StepState.complete : StepState.disabled,
              ),
              new Step(
                title: new Text('on way'),
                content: new Text('This is the forth step.'),
                isActive: currentStep >= 0,
                state:
                    currentStep >= 3 ? StepState.complete : StepState.disabled,
              ),
            ]),
      ),
    );
  }
}
