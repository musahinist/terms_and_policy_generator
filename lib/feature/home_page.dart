import 'package:flutter/material.dart';
import 'package:terms_and_policy_generator/feature/step0.dart';
import 'package:terms_and_policy_generator/feature/step1.dart';
import 'package:terms_and_policy_generator/feature/step2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentStep = 0;
  List<Widget> steps = const [Step0(), Step1(), Step2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Policy Generator'),
      ),
      body: Stepper(
        elevation: 0,
        onStepTapped: (i) {
          currentStep = i;
          setState(() {});
        },
        onStepContinue: () {
          currentStep < steps.length - 1
              ? setState(() => currentStep += 1)
              : null;
        },
        onStepCancel: () {
          currentStep > 0 ? setState(() => currentStep -= 1) : null;
        },
        currentStep: currentStep,
        type: StepperType.horizontal,
        controlsBuilder: (context, details) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (currentStep > 0)
                  TextButton(
                    onPressed: details.onStepCancel,
                    child: const Text('Back'),
                  ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: details.onStepContinue,
                  child: const Text('Continue'),
                )
              ],
            ),
          );
        },
        steps: <Step>[
          for (var i = 0; i < steps.length; i++)
            Step(
              isActive: currentStep >= i,
              state: currentStep == i
                  ? StepState.editing
                  : currentStep < i
                      ? StepState.disabled
                      : StepState.complete,
              content: steps[i],
              title: const SizedBox.shrink(),
            ),
        ],
      ),
    );
  }
}
