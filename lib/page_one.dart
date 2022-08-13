import 'package:example_project/api_access/api_access.dart';
import 'package:example_project/model/data_model.dart';
import 'package:example_project/page_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  HttpAccess httpAccess = HttpAccess();
  var apiMeme;
  @override
  void initState() {
    apiMeme = httpAccess.apiMemeAccess();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Page One",
          style: TextStyle(fontSize: 24),
        )),
        body: FutureBuilder(
          future: apiMeme,
          builder: (context, snapshot) {
            MemeData data = snapshot.data as MemeData;
            return ListView.builder(
              itemCount: data.data.memes.length,
              itemBuilder: (context, index) {
              return SizedBox(
               // height: 220,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(data.data.memes[index].url),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      alignment: Alignment.center,
                      child:  Text(
                        data.data.memes[index].name,
                        style:const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              );
            });
          },
        ));
  }
}
