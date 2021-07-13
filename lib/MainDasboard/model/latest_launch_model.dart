class SpaceX {
 late Fairings? fairings;
 late Links? links;
 late String? staticFireDateUtc;
 late int? staticFireDateUnix;
 late bool? tbd;
 late bool? net;
 late int? window;
 late String? rocket;
 late bool? success;
 late String? details;
 late List<String>? ships;
 late List<String>? payloads;
 late String? launchpad;
 late bool? autoUpdate;
 late String? launchLibraryId;
 late int? flightNumber;
 late String? name;
 late String? dateUtc;
 late int? dateUnix;
 late String? dateLocal;
 late String? datePrecision;
 late bool? upcoming;
 late List<Cores>? cores;
 late String? id;

  SpaceX(
      {this.fairings,
      this.links,
      this.staticFireDateUtc,
      this.staticFireDateUnix,
      this.tbd,
      this.net,
      this.window,
      this.rocket,
      this.success,
      this.details,
      this.ships,
      this.payloads,
      this.launchpad,
      this.autoUpdate,
      this.launchLibraryId,
      this.flightNumber,
      this.name,
      this.dateUtc,
      this.dateUnix,
      this.dateLocal,
      this.datePrecision,
      this.upcoming,
      this.cores,
      this.id});

  SpaceX.fromJson(Map<String, dynamic> json) {
    fairings = json['fairings'] != null
        ? new Fairings.fromJson(json['fairings'])
        : null;
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    staticFireDateUtc = json['static_fire_date_utc'];
    staticFireDateUnix = json['static_fire_date_unix'];
    tbd = json['tbd'];
    net = json['net'];
    window = json['window'];
    rocket = json['rocket'];
    success = json['success'];
    details = json['details'];
    ships = json['ships'].cast<String>();
    payloads = json['payloads'].cast<String>();
    launchpad = json['launchpad'];
    autoUpdate = json['auto_update'];
    launchLibraryId = json['launch_library_id'];
    flightNumber = json['flight_number'];
    name = json['name'];
    dateUtc = json['date_utc'];
    dateUnix = json['date_unix'];
    dateLocal = json['date_local'];
    datePrecision = json['date_precision'];
    upcoming = json['upcoming'];
    if (json['cores'] != null) {
      cores = <Cores>[];
      json['cores'].forEach((v) {
        cores?.add(new Cores.fromJson(v));
      });
    }
    id = json['id'];
  }
}

class Fairings {
 late bool? reused;
 late bool? recoveryAttempt;
 late bool? recovered;
 late List<String>? ships;

  Fairings({this.reused, this.recoveryAttempt, this.recovered, this.ships});

  Fairings.fromJson(Map<String, dynamic> json) {
    reused = json['reused'];
    recoveryAttempt = json['recovery_attempt'];
    recovered = json['recovered'];
    ships = json['ships'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reused'] = this.reused;
    data['recovery_attempt'] = this.recoveryAttempt;
    data['recovered'] = this.recovered;
    data['ships'] = this.ships;
    return data;
  }
}

class Links {
 late Patch? patch;
 late Reddit? reddit;
 late Flickr? flickr;
 late String? presskit;
 late String? webcast;
 late String? youtubeId;
 late String? article;
 late String? wikipedia;

  Links(
      {this.patch,
      this.reddit,
      this.flickr,
      this.presskit,
      this.webcast,
      this.youtubeId,
      this.article,
      this.wikipedia});

  Links.fromJson(Map<String, dynamic> json) {
    patch = json['patch'] != null ? new Patch.fromJson(json['patch']) : null;
    reddit =
        json['reddit'] != null ? new Reddit.fromJson(json['reddit']) : null;
    flickr =
        json['flickr'] != null ? new Flickr.fromJson(json['flickr']) : null;
    presskit = json['presskit'].toString();
    webcast = json['webcast'];
    youtubeId = json['youtube_id'];
    article = json['article'].toString();
    wikipedia = json['wikipedia'].toString();
  }
}

class Patch {
 late String? small;
 late String? large;

  Patch({this.small, this.large});

  Patch.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['small'] = this.small;
    data['large'] = this.large;
    return data;
  }
}

class Reddit {
 late String? campaign;
 late String? launch;
 late String? media;
 late String? recovery;

  Reddit({this.campaign, this.launch, this.media, this.recovery});

  Reddit.fromJson(Map<String, dynamic> json) {
    campaign = json['campaign'];
    launch = json['launch'];
    media = json['media'].toString();
    recovery = json['recovery'];
  }
}

class Flickr {
  late List<String>? small;
  late List<String>? original;

  Flickr({this.small, this.original});

  Flickr.fromJson(Map<String, dynamic> json) {
    if (json['small'] != null) {
     small = <String>[];
     small = json['small'].cast<String>();
    }
    original = json['original'].cast<String>();
  }
}

class Cores {
 late String? core;
 late int? flight;
 late bool? gridfins;
 late bool? legs;
 late bool? reused;
 late bool? landingAttempt;
 late bool? landingSuccess;
 late String? landingType;
 late String? landpad;

  Cores(
      {this.core,
      this.flight,
      this.gridfins,
      this.legs,
      this.reused,
      this.landingAttempt,
      this.landingSuccess,
      this.landingType,
      this.landpad});

  Cores.fromJson(Map<String, dynamic> json) {
    core = json['core'];
    flight = json['flight'];
    gridfins = json['gridfins'];
    legs = json['legs'];
    reused = json['reused'];
    landingAttempt = json['landing_attempt'];
    landingSuccess = json['landing_success'];
    landingType = json['landing_type'];
    landpad = json['landpad'];
  }
}