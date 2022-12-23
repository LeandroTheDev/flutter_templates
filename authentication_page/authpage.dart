import 'package:flutter/material.dart';

void main() {
  runApp(const Template());
}

class Template extends StatelessWidget {
  const Template({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TemplatePage(),
    );
  }
}

//By LeandroTheDev
class TemplatePage extends StatefulWidget {
  const TemplatePage({super.key});

  @override
  State<TemplatePage> createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
  //Remember variable
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    //Body of the Page
    return Scaffold(
      backgroundColor: const Color.fromARGB(213, 3, 153, 223),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //The white box in the center of the page
          Center(
            child: Container(
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.6,
              //Decoration of the box (Circular and Color)
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              //Texts and TextForms in the white box
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Welcome Text
                      const Text(
                        'Welcome',
                        style: TextStyle(
                            letterSpacing: 4, fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 20),
                      //E-mail Text
                      const Text('E-mail'),
                      //E-mail Input
                      Stack(
                        children: [
                          //Background Box Color and Decoration
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 209, 209, 209),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              width: 310,
                              height: 40,
                            ),
                          ),
                          //Input
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.topLeft,
                            width: 310,
                            height: 45,
                            child: TextFormField(),
                          ),
                        ],
                      ),
                      const Text('Password'),
                      //Password Input
                      Stack(
                        children: [
                          //Background Box Color and Decoration
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 209, 209, 209),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              width: 310,
                              height: 40,
                            ),
                          ),
                          //Input
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.topLeft,
                            width: 310,
                            height: 45,
                            child: TextFormField(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      //Remember CheckBox
                      Row(
                        children: [
                          //Check Box
                          Checkbox(
                            value: rememberMe,
                            onChanged: (checked) => setState(() {
                              rememberMe = !rememberMe;
                            }),
                          ),
                          //Remember Text
                          const Text(
                            'Remember',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const SizedBox(width: 110),
                          ElevatedButton(
                              onPressed: () {}, child: const Text('Login')),
                          const SizedBox(width: 110),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
