import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({Key? key}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  List<RadioModel> sampleData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(RadioModel(false,'Answer1'));
    sampleData.add(RadioModel(false,'Answer2'));
    sampleData.add(RadioModel(false, 'Answer3'));
    sampleData.add(RadioModel(false,'Answer4'));
  }

/*  {
    "quizList":[
  {"quiz": "name ",
    "anslist":[
  { "ans 1":"lskdjflksjdf",
  "ans Id": "101"},
  { "ans 1":"lskdjflksjdf",
  "ans Id": "101"},
  { "ans 1":"lskdjflksjdf",
  "ans Id": "101"},

  ],
  "crectans": "ans 1",
  "mark": 5,
  "gevienans": "ans 1",
  "studintId": "sdfsdf999"

  }
    ]
}*/





  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sampleData.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          //highlightColor: Colors.red,
          splashColor: Colors.blueAccent,
          onTap: () {
            setState(() {
              sampleData.forEach((element) => element.isSelected = false);
              sampleData[index].isSelected = true;
            });
          },
          child: RadioItem(sampleData[index]),
        );
      },
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Text(_item.text),
              ),
              Container(
                height: 24.0,
                width: 24.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: Center(
                  child: Image.asset(_item.isSelected ? 'assets/images/checkmark-circle-fill.png' : 'assets/images/checkmarkoval.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8,),
          const Divider(height: 1,color:neutralBlack400,)
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String text;

  RadioModel(this.isSelected, this.text);
}
