// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_launch_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LatestLaunchViewModel on _LatestLaunchViewModelBase, Store {
  final _$latestLaunchAtom =
      Atom(name: '_LatestLaunchViewModelBase.latestLaunch');

  @override
  SpaceX? get latestLaunch {
    _$latestLaunchAtom.reportRead();
    return super.latestLaunch;
  }

  @override
  set latestLaunch(SpaceX? value) {
    _$latestLaunchAtom.reportWrite(value, super.latestLaunch, () {
      super.latestLaunch = value;
    });
  }

  final _$serviceIsLoadingAtom =
      Atom(name: '_LatestLaunchViewModelBase.serviceIsLoading');

  @override
  bool get serviceIsLoading {
    _$serviceIsLoadingAtom.reportRead();
    return super.serviceIsLoading;
  }

  @override
  set serviceIsLoading(bool value) {
    _$serviceIsLoadingAtom.reportWrite(value, super.serviceIsLoading, () {
      super.serviceIsLoading = value;
    });
  }

  final _$getLatestLaunchAsyncAction =
      AsyncAction('_LatestLaunchViewModelBase.getLatestLaunch');

  @override
  Future<void> getLatestLaunch() {
    return _$getLatestLaunchAsyncAction.run(() => super.getLatestLaunch());
  }

  final _$_LatestLaunchViewModelBaseActionController =
      ActionController(name: '_LatestLaunchViewModelBase');

  @override
  void changeRequestState() {
    final _$actionInfo = _$_LatestLaunchViewModelBaseActionController
        .startAction(name: '_LatestLaunchViewModelBase.changeRequestState');
    try {
      return super.changeRequestState();
    } finally {
      _$_LatestLaunchViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
latestLaunch: ${latestLaunch},
serviceIsLoading: ${serviceIsLoading}
    ''';
  }
}
