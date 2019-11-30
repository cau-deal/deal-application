import 'package:carousel_slider/carousel_slider.dart';
import 'package:deal/src/blocs/auth/auth_bloc.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/fetch_mission_list/bloc.dart';
import 'package:deal/src/custom/widgets/custom_indicator.dart';
import 'package:deal/src/screens/exception/no_result.dart';
import 'package:deal/src/screens/mission_list/widgets/mission_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _current = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
//        color: Colors.white,
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("오늘의 추천 의뢰", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, letterSpacing: -0.4, fontSize: 15)),
              SizedBox(height: 10),
              CarouselSlider(
                height: 280.0,
                autoPlay: true,
                viewportFraction: 1.0,
                onPageChanged: (index) {
                  setState(() { _current = index; });
                },
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 0.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1,2,3,4,5].map((index) {
                  return Container(
                    width: 6.0,
                    height: 6.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration:
                    BoxDecoration(shape: BoxShape.circle, color: _current == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)),
                  );
                }).toList(),
              ),

              SizedBox(height: 20),
              Text("지금뜨는 수집 의뢰", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, letterSpacing: -0.4, fontSize: 15)),
              SizedBox(height: 10),
              CarouselSlider(
                height: 200.0,
                aspectRatio: 1,
                viewportFraction: 0.6,
                enableInfiniteScroll: false,
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),

              SizedBox(height: 40),
              Text("지금뜨는 가공 의뢰", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, letterSpacing: -0.4, fontSize: 15)),
              SizedBox(height: 10),
              CarouselSlider(
                height: 200.0,
                aspectRatio: 1,
                viewportFraction: 0.6,
                enableInfiniteScroll: false,
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
            ],
          )
        )
    );
  }
}
