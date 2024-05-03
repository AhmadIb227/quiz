import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary(this.getSummaryData, {super.key});
  final List<Map<String, Object>> getSummaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...getSummaryData.map((e) => Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor:
                              e['user_answere']==e['current_question']
                              ?Colors.green
                              :const Color.fromARGB(255, 245, 29, 14)
                            ,
                            radius: 15,
                            child: Text(
                                ((e['question_index'] as int) + 1).toString())),
                        const SizedBox(width: 40),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e['question'].toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(e['user_answere'].toString(),
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 248, 94, 5))),
                              Text(e['current_question'].toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 52, 54, 206))),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
