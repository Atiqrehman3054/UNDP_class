import 'package:flutter/material.dart';

class ControlledPageView extends StatefulWidget {
  @override
  _ControlledPageViewState createState() => _ControlledPageViewState();
}

class _ControlledPageViewState extends State<ControlledPageView> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controlled PageView'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: _pageController,
              onPageChanged: (pages) {
                setState(() {
                  _currentPage = pages;
                });
              },
              children: <Widget>[
                Container(color: Colors.red, child: Center(child: Text('Page 1'))),
                Container(color: Colors.green, child: Center(child: Text('Page 2'))),
                Container(color: Colors.blue, child: Center(child: Text('Page 3'))),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _pageController.previousPage(duration: Duration(seconds: 2), curve: Curves.easeInBack);
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green),
                ),
                child: Text("Previous"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                  style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                },
                child: Text("Next"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
