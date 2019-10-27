import 'package:cached_network_image/cached_network_image.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/custom/widgets/under_circle_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MissionDetailTabContainer extends StatefulWidget {
  final int idx;
  final Widget header;
  final List<String> items;
  final Widget tabBarView;

  MissionDetailTabContainer({@required this.header, @required this.items, @required this.tabBarView, @required this.idx})
      : assert(tabBarView != null),
        assert(items != null);

  @override
  MissionDetailTabContainerState createState() => MissionDetailTabContainerState();
}

class MissionDetailTabContainerState extends State<MissionDetailTabContainer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.items.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 360.0,
                elevation: 0,
                backgroundColor: Colors.white,
                floating: true,
                pinned: true,
                snap: false,
                flexibleSpace: BlocBuilder<MissionDetailBloc, MissionDetailState>(
                  builder: (ctx, state){
                    return FlexibleSpaceBar(
                      background: Hero(
                        tag: 'mission_list_thumbnail_${widget.idx}',
                        child: Container(
                          margin: EdgeInsets.only(bottom: 120.0),
                          child: CachedNetworkImage(
                              imageUrl: state.thumbnailUri,
                              imageBuilder: (context, imageProvider) => Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover),
                                ),
                              ),
                              errorWidget: (context, url, error) => Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("res/images/default_thumbnail.png"),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              )
                          )
                        ),
                      ),
                    );
                  },
                ),
                titleSpacing: 0,
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(120.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          height: 80,
                          child: widget.header,
                          padding: EdgeInsets.only(left: 15, right: 15),
                        ),
                        UnderCircleTabBar(items: widget.items)
                      ],
                    )),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 14,
                  padding: const EdgeInsets.only(left: 0.0, top: 10.0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ];
          },
          body: Container(color: Colors.white, child: widget.tabBarView),
        ));
  }
}
