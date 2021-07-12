import 'package:flutter/material.dart';

class SteppeScreen extends StatefulWidget {
  const SteppeScreen({Key? key}) : super(key: key);

  @override
  _SteppeScreenState createState() => _SteppeScreenState();
}

class _SteppeScreenState extends State<SteppeScreen> {
  int _currentstep = 0;
  StepperType stepperType = StepperType.vertical;
  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stepper'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.menu),
          onPressed: switchStepsType,
        ),
        body: Row(
          children: [
            Expanded(
              child: Stepper(
                physics : ClampingScrollPhysics(),
                type: stepperType,
                steps: _mySteps(),
                currentStep: this._currentstep,
                onStepTapped: (step) {
                  setState(() {
                    this._currentstep = step;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    if (this._currentstep < this._mySteps().length - 1) {
                      this._currentstep = this._currentstep + 1;
                    } else {
                      // if everything is completed
                      print('completed, check field');
                    }
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (this._currentstep > 0) {
                      this._currentstep = this._currentstep - 1;
                    } else {
                      this._currentstep = 0;
                    }
                  });
                },
              ),
            ),
          ],
        ));
  }

  List<Step> _mySteps() {
    List<Step> _steps = [
      Step(
        title:  Text(_currentstep ==0 ? 'Name': ''),
        content: TextFormField(
          decoration: InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(),
          ),
        ),
        isActive: _currentstep >= 0,
      ),
      Step(
        title: Text(_currentstep ==1 ? 'Email': ''),
        content: TextFormField(
          decoration: InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(),
          ),
        ),
        isActive: _currentstep >= 1,
      ),
      Step(
        title: Text(_currentstep ==2 ? 'Address': ''),
        content: TextFormField(
          decoration: InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(),
          ),
        ),
        isActive: _currentstep >= 2,
      ),
      Step(
        title: Text(_currentstep ==3 ? 'Game': ''),
        content: TextFormField(
          decoration: InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(),
          ),
        ),
        isActive: _currentstep >= 3,
      ),
      Step(
        title: Text(_currentstep ==4 ? 'Phone': ''),
        content: TextFormField(
          decoration: InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(),
          ),
        ),
        isActive: _currentstep >= 4,
      ),
    ];
    return _steps;
  }
}
