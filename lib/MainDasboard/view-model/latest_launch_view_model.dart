
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:spacex_app/MainDasboard/model/latest_launch_model.dart';
import 'package:url_launcher/url_launcher.dart';

part 'latest_launch_view_model.g.dart';

class LatestLaunchViewModel = _LatestLaunchViewModelBase with _$LatestLaunchViewModel;

abstract class _LatestLaunchViewModelBase with Store {

  @observable
  SpaceX? latestLaunch;

  @observable
  bool serviceIsLoading = false;

  final _url = 'https://api.spacexdata.com/v4/launches/latest';

  @action
  Future<void> getLatestLaunch() async {

    changeRequestState();

    final response = await Dio().get(_url);

    if (response.statusCode == HttpStatus.ok) {
      latestLaunch = SpaceX.fromJson(response.data);
      print(response.statusCode);
    }
    changeRequestState();
  }
  @action
  void launchURL(url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @action 
  void changeRequestState(){
    serviceIsLoading = !serviceIsLoading;
  }
}