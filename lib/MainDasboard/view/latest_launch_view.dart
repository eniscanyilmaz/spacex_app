import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spacex_app/MainDasboard/components/theme_data.dart';
import 'package:spacex_app/MainDasboard/view-model/latest_launch_view_model.dart';

class LatestLaunchPage extends StatelessWidget {
  LatestLaunchPage({Key? key}) : super(key: key);

  final LatestLaunchViewModel _latestLaunchViewModel = LatestLaunchViewModel();

  @override
  Widget build(BuildContext context) {
    _latestLaunchViewModel.getLatestLaunch();
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorPallette.color4,
        body: Stack(
          children: [
            Image.network(
              'https://i.pinimg.com/564x/67/99/bd/6799bd76c75ea48f56eb5fb78eb66cee.jpg',
              fit: BoxFit.cover,
              width: size.width,
              height: size.height,
            ),
            Positioned(
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8),
                child: Image.asset(
                  'assets/images/spacexLogo.png',
                  height: size.height * 0.023,
                ),
              ),
            ),
            Container(
              child: Observer(builder: (_) {
                if (!_latestLaunchViewModel.serviceIsLoading) {
                  print(_latestLaunchViewModel.serviceIsLoading);
                  return Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: Image.network(
                            _latestLaunchViewModel
                                .latestLaunch!.links!.patch!.large
                                .toString(),
                            height: size.height * 0.3,
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                width: size.width,
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color:
                                        ColorPallette.color1.withOpacity(0.9),
                                        // boxShadow: [BoxShadow(
                                        //   blurRadius: 5,
                                        //   color: ColorPallette.color1
                                        // )],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        _latestLaunchViewModel
                                            .latestLaunch!.name
                                            .toString(),
                                        style: TextThemeData.titleTextStyleW,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      _latestLaunchViewModel
                                          .latestLaunch!.details
                                          .toString(),
                                      style: TextThemeData.subTitleTextStyleW,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                width: size.width,
                                bottom: size.height * 0.05,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                          _latestLaunchViewModel.launchURL(_latestLaunchViewModel.latestLaunch!.links!.reddit!.campaign);
                                        },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.reddit,
                                            color: ColorPallette.color2,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'See on Reddit',
                                            style: TextStyle(
                                                color: ColorPallette.color2),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: 50,
                                      color: Colors.grey,
                                    ),
                                    Container(
                                      width: size.width * 0.55,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.red.withOpacity(0.5),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          _latestLaunchViewModel.launchURL(_latestLaunchViewModel.latestLaunch!.links!.webcast);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(width: 14),
                                            Container(
                                              width: 7,
                                              height: 7,
                                              decoration: BoxDecoration(
                                                  color: ColorPallette.color3,
                                                  borderRadius:
                                                      BorderRadius.circular(3.5)),
                                            ),
                                            SizedBox(width: 14),
                                            Icon(
                                              FontAwesomeIcons.youtube,
                                              color: ColorPallette.color2,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'Watch on Youtube',
                                              style: TextStyle(
                                                  color: ColorPallette.color2),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator(color: ColorPallette.color2,));
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
