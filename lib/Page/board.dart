import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'qna.dart';
import 'package:moomool/Controller/controller.dart';



class QuestionBoardPage extends StatefulWidget {

  _QuestionBoardPageState createState() => _QuestionBoardPageState();
}

class _QuestionBoardPageState extends State<QuestionBoardPage> {

  final question = List<Questions>.generate(
    20,
        (i) => Questions(
      '이게 뭐에요?',
      '이거 사용법을 어떻게 해야할 지 모르겠어요',
    ),
  );


  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('정보게시판'),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
            child: Container(
              child: _buildListView(context),
            )));
  }

  ListView _buildListView(BuildContext context){
    return ListView.builder(
      itemCount: question.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(question[index].title),
          subtitle: Text(question[index].description),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BoardDetailPage(questions: question[index]),
              ),
            );
          },
        );
      },
    );

  }

}