import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pg_guide/Models/introSliders_MODEL.dart';
import 'package:pg_guide/main.dart';

class IntroSliders extends StatefulWidget {
  const IntroSliders({Key key}) : super(key: key);
  @override
  _IntroSlidersState createState() => _IntroSlidersState();
}

class _IntroSlidersState extends State<IntroSliders> with SingleTickerProviderStateMixin{

  int currentIndex = 0;
  TabController tabController;
  List<IntroSliderModel> sliders = [
    IntroSliderModel(image: 'assets/IntroSlider_Images/chat.jpg',title: 'Title Goes Here',description: 'Description goes here. The description defines the title in in words as less as possible. it just gives us an overview abut whats written in the text.'),
    IntroSliderModel(image: 'assets/IntroSlider_Images/location.png',title: 'Title Goes Here',description: 'Description goes here. The description defines the title in in words as less as possible. it just gives us an overview abut whats written in the text.'),
    IntroSliderModel(image: 'assets/IntroSlider_Images/chat.jpg',title: 'Title Goes Here',description: 'Description goes here. The description defines the title in in words as less as possible. it just gives us an overview abut whats written in the text.'),
  ];

  body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Expanded(
            flex: 5,
              child: TabBarView(
                controller: tabController,
                children: List.generate(sliders.length, (index) => slidersContent(index)),

              ),
          ),

          SizedBox(height: 10,),

          Expanded(child: bottomIndicators()),

        ],
      ),
    );
  }

  slidersContent(int index) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [

          Expanded(
              child: Image.asset(
                  sliders[index].image,
                height: 500,
                width: 500,
              ),
          ),

          SizedBox(height: 50,),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [

                ct.boldText(text: sliders[index].title,size: 25,alignment: TextAlign.center,color: Colors.amber.shade700),
                SizedBox(height: 20,),
                ct.regularText(text: sliders[index].description,size: 14,alignment: TextAlign.center,color: Colors.grey.shade600),

              ],
            ),
          ),

        ],
      ),
    );

  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: sliders.length, vsync: this);
    tabController.addListener(() {
      setState(() {
        currentIndex = tabController.index;
      });
    });
  }

  bottomIndicators() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        InkWell(

          borderRadius: BorderRadius.circular(25),
          onTap: (){
            if(currentIndex > 0 && currentIndex <= sliders.length) {
              tabController.animateTo(currentIndex - 1, duration: Duration(milliseconds: 700), curve: Curves.easeIn);
            }else{
              //move to another screen
            }
          },
          child: Container(
              height: 50,
              width: 50,
              //padding: EdgeInsets.fromLTRB(30, 8, 30, 8),
              decoration: BoxDecoration(
                color: currentIndex > 0 ? WHITE : Colors.amber.shade700,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_left,
                  size: 25,
                  color: WHITE,
                ),
              )
          ),
        ),

        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(sliders.length, (index) => sliderIndicator(index),
              ),
            ),
        ),

        InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: (){
            if(currentIndex < sliders.length - 1) {
              tabController.animateTo(currentIndex + 1, duration: Duration(milliseconds: 700), curve: Curves.easeIn);
            }else{
              //move to another screen
            }
          },
          child: Container(
            height: 50,
            width: 50,
            //padding: EdgeInsets.fromLTRB(30, 8, 30, 8),
            decoration: BoxDecoration(
              color: BLACK,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
                child: Icon(
                  Icons.arrow_right,
                  size: 25,
                  color: Colors.amber.shade700,
                ),
            )
          ),
        ),
      ],
    );

  }

  sliderIndicator(int index) {
    return Container(
      height: currentIndex == index ? 12 : 8,
      width: currentIndex == index ? 12 : 8,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(currentIndex == index ? 8 : 5),
        color: currentIndex == index ? BLACK : Colors.grey.shade400,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE,
       body: body(),
    );
  }


}
