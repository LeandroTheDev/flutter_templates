import 'package:flutter/material.dart';

void main() {
  runApp(const Template());
}

class Template extends StatelessWidget {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          //Search and Filter
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.02,
                    ),
                    //Search
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor,
                      ),
                      width: screenSize.width * 0.7,
                      height: 50,
                      //Text Input
                      child: Row(
                        children: [
                          //Text Input
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextFormField(),
                            ),
                          ),
                          //Icon Button
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.23,
                    ),
                    //Icon Filter
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor),
                      child: const Icon(Icons.filter_frames),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Homepage Image
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: SizedBox(
                width: screenSize.width * 0.9,
                //Image Link
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                    child: Image.network('https://i.imgur.com/iR10lJZ.jpg',
                        fit: BoxFit.fill)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
