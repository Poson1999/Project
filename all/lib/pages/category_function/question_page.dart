import 'package:all/class/qa_list_item.dart';
import 'package:flutter/material.dart';


class QuestionPage extends StatelessWidget {
  final QAListItem question;
  const QuestionPage({Key? key,  required this.question}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Question"),centerTitle: true),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  child: Text("Q"),
                ),
                title: Text(question.question),
              ),
            ),
            const Divider(color: Colors.black45),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const Text("Asker:"),
                title: Text(question.answererName),
              ),
            ),
            const Divider(color: Colors.black),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const CircleAvatar(
                  child: Text("A"),
                ),
                title: Text(question.answer),
              ),
            ),
          ],
        )
      ),
    );
  }


}

