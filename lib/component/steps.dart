import 'package:flutter/material.dart';

class Steps extends StatefulWidget {
  @override
  _StepsState createState() => _StepsState();
}

class _StepsState extends State<Steps> {

  int _currentStep=0;
  bool _isActive=true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            '步骤条',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              new Stepper(
                currentStep: _currentStep,  // <-- 激活的下标
                onStepTapped: (index){
                  setState(() {
                    _currentStep=index;
                  });
                },

                //自定义按钮
              controlsBuilder:(BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}){
                  return Row(
                    children: <Widget>[

                    ],
                  );
              },
                steps: <Step>[
                  new Step(
                    title: new Text('第一步'),
                    content: new Text('第一步内容'),
                    state: StepState.indexed,
                    isActive: true,
                    subtitle: new Text('第一步小标题'),
                  ),
                  new Step(
                    title: new Text('第二步'),
                    isActive: true,
                    content: new Text('第二步内容'),
                  ),
                  new Step(
                    title: new Text('第三步'),
                    content: new Text('第三步内容'),
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
