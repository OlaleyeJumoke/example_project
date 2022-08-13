import 'package:example_project/page_one.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Page three")),
        body: 
        Container(
          //height: 50.0,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
            Container(
              height: 120,
              alignment: Alignment.center,
                child: const Text(
              "This is page three ",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            )),
            Container(
              height: 120.0,
              child: MaterialButton(height: 50.0,
                onPressed: (){
                Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const PageOne()));
              }, child:const Text("Go to page two", style: TextStyle(color: Colors.white),),color: Colors.blue,),
            ),
          Container(
            height: 120,
              alignment: Alignment.center,
                child: const Text(
              "We are in week 6 and we are trying to create an app",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            )),
            Container(
            height: 120,
              alignment: Alignment.center,
                child: const Text(
              "We are in week 7 and we are trying to create an app",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            )),
            Container(
            height: 120,
              alignment: Alignment.center,
                child: const Text(
              "We are in week 7 and we are trying to create an app",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            )),
            Container(
            height: 120,
              alignment: Alignment.center,
                child: const Text(
              "We are in week 7 and we are trying to create an app",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            )),
            Container(
            height: 120,
              alignment: Alignment.center,
                child: const Text(
              "We are in week 7 and we are trying to create an app",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            )),
            Container(
            height: 120,
              alignment: Alignment.center,
                child: const Text(
              "We are in week 7 and we are trying to create an app",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            )),
            Container(
            height: 120,
              alignment: Alignment.center,
                child: const Text(
              "We are in week 7 and we are trying to create an app",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            )),
            Container(
            height: 120,
              alignment: Alignment.center,
                child: const Text(
              "We are in week 8 and we are trying to create an app",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            )),
          ]),
        ));
  }
}
