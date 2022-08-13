import 'package:example_project/page_three.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Page two")),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Text(
                  counter.toString(),
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue),
                )),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => const PageThree()));
                  },
                  child: const Text(
                    "Update text",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                )
              ]),
        ));
  }
}
