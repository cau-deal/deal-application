import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:deal/src/blocs/main_screen/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MainScreenPage extends StatefulWidget {
  @override
  MainScreenPageState createState() => MainScreenPageState();
}

class MainScreenPageState extends State<MainScreenPage> {

  int _current = 0;
  MainScreenBloc _mainScreenBloc;
  int isLoadingState = 0;

  @override
  void initState() {
    super.initState();
    this._mainScreenBloc = BlocProvider.of<MainScreenBloc>(context)..add(FetchMainScreen());
  }

  @override
  void dispose() {
    this._mainScreenBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
//        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
//        color: Colors.white,
        child: Container(
          child: BlocListener<MainScreenBloc, MainScreenState>(
            listener: (ctx, state){
              if(state.isSuccess || state.isFailure){
                setState(() { this.isLoadingState = 1; });
              }
            },
            child: IndexedStack(
                index: this.isLoadingState,
                children: <Widget>[
                  Container(
                  color: Colors.white,
                      child: SpinKitThreeBounce(
                        color: Color(0xffF7CF00),
                        size: 20.0,
                      )
                  ),
                   BlocBuilder<MainScreenBloc, MainScreenState>(
                     builder: (ctx, state){
                      return Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
                                      items: state.recommendation.map((r) {
                                        return Builder(
                                          builder: (BuildContext context) {
                                            return Container(
                                                width: MediaQuery.of(context).size.width,
                                                margin: EdgeInsets.symmetric(horizontal: 0.0),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                  image: DecorationImage(
                                                      image: CachedNetworkImageProvider(r.recommendImageUrl),
                                                      fit: BoxFit.fill
                                                  ),
                                                ),
                                                child: null
                                            );
                                          },
                                        );
                                      }).toList(),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: state.recommendation.map((index) {
                                        return Container(
                                          width: 6.0,
                                          height: 6.0,
                                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                          decoration: BoxDecoration(shape: BoxShape.circle, color: _current == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)),
                                        );
                                      }).toList(),
                                    )
                                  ],
                                )
                              ),

                              SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                                child: Text("지금뜨는 수집 의뢰", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, letterSpacing: -0.4, fontSize: 15)),
                              ),
                              SizedBox(height: 10),
                              CarouselSlider(
                                height: 250.0,
                                aspectRatio: 1,
                                initialPage: 2,
                                viewportFraction: 0.6,
                                enableInfiniteScroll: true,
                                items: state.collect.map((proto) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              height: 200,
                                              width: MediaQuery.of(context).size.width,
                                              margin: EdgeInsets.only(right: 10.0),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                                image: DecorationImage(
                                                    image: CachedNetworkImageProvider(proto.thumbnailUrl),
                                                    fit: BoxFit.fill
                                                ),
                                              ),
                                              child: Container()
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(3),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                    '${proto.summary}',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(fontSize: 14.0, color: Colors.black54, fontWeight: FontWeight.w600), textAlign: TextAlign.start
                                                ),
                                                SizedBox(height: 3),
                                                Text(
                                                    '${proto.title}',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w700), textAlign: TextAlign.start
                                                )
                                              ],
                                            )
                                          )
                                        ],
                                      );
                                    },
                                  );
                                }).toList(),
                              ),

                              SizedBox(height: 40),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                                child: Text("지금뜨는 가공 의뢰", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, letterSpacing: -0.4, fontSize: 15)),
                              ),
                              SizedBox(height: 10),
                              CarouselSlider(
                                height: 250.0,
                                aspectRatio: 1,
                                initialPage: 2,
                                viewportFraction: 0.6,
                                enableInfiniteScroll: true,
                                items: state.process.map((proto) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                              height: 200,
                                              width: MediaQuery.of(context).size.width,
                                              margin: EdgeInsets.only(right: 10.0),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                                image: DecorationImage(
                                                    image: CachedNetworkImageProvider(proto.thumbnailUrl),
                                                    fit: BoxFit.fill
                                                ),
                                              ),
                                              child: Container()
                                          ),
                                          Padding(
                                              padding: EdgeInsets.all(3),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                      '${proto.summary}',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(fontSize: 14.0, color: Colors.black54, fontWeight: FontWeight.w600), textAlign: TextAlign.start
                                                  ),
                                                  SizedBox(height: 3),
                                                  Text(
                                                      '${proto.title}',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w700), textAlign: TextAlign.start
                                                  )
                                                ],
                                              )
                                          )
                                        ],
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                              SizedBox(height: 10)

                            ],
                          )
                      );
                    },
                   )
            ]
          )
        )
    ));
  }

}
