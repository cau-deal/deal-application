import 'dart:async';
import 'dart:io';

import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/mission_act/bloc.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/android_encoder.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CollectSoundScreen extends StatefulWidget {

  final int missionId;
  final MissionDetailState state;

  const CollectSoundScreen({Key key, this.missionId, this.state}) : super(key: key);

  @override
  CollectSoundScreenState createState() {
    return CollectSoundScreenState();
  }
}

class CollectSoundScreenState extends State<CollectSoundScreen> {

  bool _isRecording = false;
  bool _isPlaying = false;
  String _path;

  StreamSubscription _recorderSubscription;
  StreamSubscription _dbPeakSubscription;
  StreamSubscription _playerSubscription;

  FlutterSound flutterSound;

  double sliderCurrentPosition = 0.0;
  double maxDuration = 1.0;

  MissionActBloc _missionActBloc;
  MissionDetailBloc _missionDetailBloc;

  @override
  void initState() {
    super.initState();
    flutterSound = FlutterSound();
    flutterSound.setSubscriptionDuration(0.01);
    flutterSound.setDbPeakLevelUpdate(0.8);
    flutterSound.setDbLevelEnabled(true);

    sliderCurrentPosition = 0.0;
    maxDuration = 1.0;

    this._missionActBloc = BlocProvider.of<MissionActBloc>(context);
    this._missionDetailBloc = BlocProvider.of<MissionDetailBloc>(context);
  }

  @override
  void dispose() {
    this._missionDetailBloc.close();
    this._missionDetailBloc.close();
    super.dispose();
  }

  void startRecorder() async{
    try {
      String path = await flutterSound.startRecorder(
        Platform.isIOS ? 'ios.aac' : 'android.aac',
        androidEncoder: AndroidEncoder.AAC,
        androidAudioSource: AndroidAudioSource.MIC,
      );
      print('startRecorder: $path');

//      _recorderSubscription = flutterSound.onRecorderStateChanged.listen((e) {
//        DateTime date = new DateTime.fromMillisecondsSinceEpoch(
//            e.currentPosition.toInt(),
//            isUtc: true);
//        String txt = DateFormat('mm:ss:SS', 'en_GB').format(date);
//
//        this.setState(() {
//          this._recorderTxt = txt.substring(0, 8);
//        });
//      });

      this.setState(() {
        this._isRecording = true;
        this._path = path;
      });

    } catch (err) {
      print('startRecorder error: $err');
    }
  }

  void stopRecorder() async{
    try {
      String result = await flutterSound.stopRecorder();
      print('stopRecorder: $result');

      if (_recorderSubscription != null) {
        _recorderSubscription.cancel();
        _recorderSubscription = null;
      }
      if (_dbPeakSubscription != null) {
        _dbPeakSubscription.cancel();
        _dbPeakSubscription = null;
      }

      this.setState(() {
        this._isRecording = false;
      });
    } catch (err) {
      print('stopRecorder error: $err');
    }
  }

  void startPlayer() async{
    try {
      String path = await flutterSound.startPlayer(this._path);
      await flutterSound.setVolume(1.0);
      print('startPlayer: $path');

      _playerSubscription = flutterSound.onPlayerStateChanged.listen((e) {
        if (e != null) {
          print(e.currentPosition);
          this.setState((){
            sliderCurrentPosition = e.currentPosition;
            maxDuration = e.duration;
          });
        }
      });

      this.setState(() {
        this._isPlaying = true;
      });

    } catch (err) {
      print('error: $err');
    }
  }

  void stopPlayer() async{
    try {
      String result = await flutterSound.stopPlayer();
      print('stopPlayer: $result');

      if (_playerSubscription != null) {
        _playerSubscription.cancel();
        _playerSubscription = null;
      }

      this.setState(() {
        this._isPlaying = false;
      });

    } catch (err) {
      print('error: $err');
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: "의뢰수행 (음성 수집)",
        child: Container(
          padding: EdgeInsets.all(20),
          child:  Column(
            children: <Widget>[
              Container(
                color: Color(0xffeeeeee),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      child: Icon(
                        Icons.help,
                        color: Colors.black45,
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                                "녹음 버튼을 누른 뒤, 다음 문장들을 따라 읽어주세요.",
                                style: TextStyle(color: Colors.black, height: 1.5, fontSize: 14)
                            )
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: widget.state.missionInstruction.split("\n").map((script){
                  String clearText = script.replaceAll("⏎", "").replaceAll("¶ ", "");
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        width: double.infinity,
                        child: Text(clearText, style:TextStyle(color: Colors.black54)),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Container (
                            width: 32.0,
                            height: 32.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,// You can use like this way or like the below line
                              //borderRadius: new BorderRadius.circular(30.0),
                              color: Colors.red,
                            ),
                            child: ClipOval(
                              child: FlatButton(
                                onPressed: () {
                                  if (!this._isRecording) {
                                    return this.startRecorder();
                                  }
                                  this.stopRecorder();
                                },
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: this._isRecording ? AssetImage('res/images/ic_stop.png') : AssetImage('res/images/ic_mic.png'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container (
                            width: 32.0,
                            height: 32.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffeeeeee),
//                              color: Color(0xFF5f75ac),
                            ),
                            child: ClipOval(
                              child: FlatButton(
                                onPressed: () {
                                  if (!this._isPlaying) {
                                    this.stopRecorder();
                                    return this.startPlayer();
                                  }
                                  this.stopPlayer();
                                },
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                  image: this._isPlaying ? AssetImage('res/images/ic_stop.png'):  AssetImage('res/images/ic_play.png'),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.red,
                                inactiveTrackColor: Colors.black12,
                                trackHeight: 5.0,
                                thumbColor: Color(0xFF5f75ac),
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
                                overlayColor: Color(0xFF5f75ac).withAlpha(32),
                                overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                              ),
                              child: Slider(
                                  min: 0.0,
                                  max: maxDuration,
                                  value: sliderCurrentPosition,
                                  onChanged: (double value) async {
                                    await flutterSound.seekToPlayer(value.toInt());
                                  },
                                  divisions: maxDuration.toInt()
                              )
                            )
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  );
                }).toList()
              ),
              SizedBox(height: 20),
              BlocListener<MissionActBloc, MissionActState>(
                listener: (ctx, state){
                  if (state.isFailure) {
                    Fluttertoast.showToast(msg: "제출에 실패하였습니다!");
                  }
                  if (state.isSuccess) {
                    _missionDetailBloc.add(Fetch(widget.missionId));
                    Fluttertoast.showToast(msg: "의뢰를 성공하였습니다!");
                    Navigator.pop(ctx);
                  }
                },
                child: Container(
                  height: 40,
                  child: WhiteRoundButton(
                      buttonColor: Color(0xFF5f75ac),
                      textColor: Colors.white,
                      text: '제출하기',
                      onPressed: (){
                        this._missionActBloc.add(SubmitCollectSound(
                            widget.missionId,
                        ));
                      }
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
