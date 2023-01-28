import 'package:flutter/material.dart';

void main() {
  runApp(const Template());
}

class Template extends StatelessWidget {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        secondaryHeaderColor: Colors.redAccent,
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
      //Category Button
      drawer: const Drawer(),
      //Profile Button
      endDrawer: const Drawer(),
      appBar: AppBar(
        //Category Drawer Caller
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.category),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        //Profile Drawer Caller
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        //Cart Button and Text
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            //Home Text
            const Flexible(
                child: Text(
              'Home',
              overflow: TextOverflow.ellipsis,
            )),
            const Spacer(),
            //Cart Button
            Flexible(
              child: FittedBox(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shop),
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                        width: screenSize.width * 0.98,
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
                      //Espace
                      SizedBox(
                        width: screenSize.width * 0.01,
                      ),
                      //Icon Filter
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).secondaryHeaderColor),
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
                  height: screenSize.height * 0.2,
                  //Image Link
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network('https://i.imgur.com/iR10lJZ.jpg',
                        fit: BoxFit.fitWidth),
                  ),
                ),
              ),
            ),
            //Categorys
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //Dummy Datas
                children: [
                  //Category #1
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor),
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(Icons.device_unknown),
                              Text('Category Name'),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Category #2
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor),
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(Icons.device_unknown),
                              Text('Category Name'),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Category #3
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor),
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(Icons.device_unknown),
                              Text('Category Name'),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Category #4
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor),
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              SizedBox(width: 10),
                              Icon(Icons.device_unknown),
                              Text('Category Name'),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Products
            GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              //Dummy Datas
              children: [
                //Product #1
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColor),
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          //Image
                          SizedBox(
                            width: 350,
                            height: 350,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.network(
                                  'https://i.imgur.com/iR10lJZ.jpg',
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                          const SizedBox(
                            width: 480,
                            height: 70,
                            child: Text(
                              'Product Name',
                              style: TextStyle(fontSize: 60),
                            ),
                          ),
                          const SizedBox(
                            width: 480,
                            height: 70,
                            child: Text(
                              '\$100',
                              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Product #2
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColor),
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          //Image
                          SizedBox(
                            width: 350,
                            height: 350,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.network(
                                  'https://i.imgur.com/iR10lJZ.jpg',
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                          const SizedBox(
                            width: 480,
                            height: 70,
                            child: Text(
                              'Product Name',
                              style: TextStyle(fontSize: 60),
                            ),
                          ),
                          const SizedBox(
                            width: 480,
                            height: 70,
                            child: Text(
                              '\$100',
                              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Product #3
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColor),
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          //Image
                          SizedBox(
                            width: 350,
                            height: 350,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.network(
                                  'https://i.imgur.com/iR10lJZ.jpg',
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                          const SizedBox(
                            width: 480,
                            height: 70,
                            child: Text(
                              'Product Name',
                              style: TextStyle(fontSize: 60),
                            ),
                          ),
                          const SizedBox(
                            width: 480,
                            height: 70,
                            child: Text(
                              '\$100',
                              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Product #4
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColor),
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          //Image
                          SizedBox(
                            width: 350,
                            height: 350,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.network(
                                  'https://i.imgur.com/iR10lJZ.jpg',
                                  fit: BoxFit.fitWidth),
                            ),
                          ),
                          const SizedBox(
                            width: 480,
                            height: 70,
                            child: Text(
                              'Product Name',
                              style: TextStyle(fontSize: 60),
                            ),
                          ),
                          const SizedBox(
                            width: 480,
                            height: 70,
                            child: Text(
                              '\$100',
                              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
