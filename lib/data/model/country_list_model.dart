import 'dart:convert';
/// flags : {"png":"https://flagcdn.com/w320/md.png","svg":"https://flagcdn.com/md.svg","alt":"The flag of Moldova is composed of three equal vertical bands of blue, yellow and red, with the national coat of arms centered in the yellow band."}
/// name : {"common":"Moldova","official":"Republic of Moldova","nativeName":{"ron":{"official":"Republica Moldova","common":"Moldova"}}}
/// region : "Europe"

CountryListModel countryListModelFromJson(String str) => CountryListModel.fromJson(json.decode(str));
String countryListModelToJson(CountryListModel data) => json.encode(data.toJson());
class CountryListModel {
  CountryListModel({
      Flags? flags, 
      Name? name, 
      String? region,}){
    _flags = flags;
    _name = name;
    _region = region;
}

  CountryListModel.fromJson(dynamic json) {
    _flags = json['flags'] != null ? Flags.fromJson(json['flags']) : null;
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _region = json['region'];
  }
  Flags? _flags;
  Name? _name;
  String? _region;
CountryListModel copyWith({  Flags? flags,
  Name? name,
  String? region,
}) => CountryListModel(  flags: flags ?? _flags,
  name: name ?? _name,
  region: region ?? _region,
);
  Flags? get flags => _flags;
  Name? get name => _name;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_flags != null) {
      map['flags'] = _flags?.toJson();
    }
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['region'] = _region;
    return map;
  }

}

/// common : "Moldova"
/// official : "Republic of Moldova"
/// nativeName : {"ron":{"official":"Republica Moldova","common":"Moldova"}}

Name nameFromJson(String str) => Name.fromJson(json.decode(str));
String nameToJson(Name data) => json.encode(data.toJson());
class Name {
  Name({
      String? common, 
      String? official, 
      NativeName? nativeName,}){
    _common = common;
    _official = official;
    _nativeName = nativeName;
}

  Name.fromJson(dynamic json) {
    _common = json['common'];
    _official = json['official'];
    _nativeName = json['nativeName'] != null ? NativeName.fromJson(json['nativeName']) : null;
  }
  String? _common;
  String? _official;
  NativeName? _nativeName;
Name copyWith({  String? common,
  String? official,
  NativeName? nativeName,
}) => Name(  common: common ?? _common,
  official: official ?? _official,
  nativeName: nativeName ?? _nativeName,
);
  String? get common => _common;
  String? get official => _official;
  NativeName? get nativeName => _nativeName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['common'] = _common;
    map['official'] = _official;
    if (_nativeName != null) {
      map['nativeName'] = _nativeName?.toJson();
    }
    return map;
  }

}

/// ron : {"official":"Republica Moldova","common":"Moldova"}

NativeName nativeNameFromJson(String str) => NativeName.fromJson(json.decode(str));
String nativeNameToJson(NativeName data) => json.encode(data.toJson());
class NativeName {
  NativeName({
      Ron? ron,}){
    _ron = ron;
}

  NativeName.fromJson(dynamic json) {
    _ron = json['ron'] != null ? Ron.fromJson(json['ron']) : null;
  }
  Ron? _ron;
NativeName copyWith({  Ron? ron,
}) => NativeName(  ron: ron ?? _ron,
);
  Ron? get ron => _ron;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_ron != null) {
      map['ron'] = _ron?.toJson();
    }
    return map;
  }

}

/// official : "Republica Moldova"
/// common : "Moldova"

Ron ronFromJson(String str) => Ron.fromJson(json.decode(str));
String ronToJson(Ron data) => json.encode(data.toJson());
class Ron {
  Ron({
      String? official, 
      String? common,}){
    _official = official;
    _common = common;
}

  Ron.fromJson(dynamic json) {
    _official = json['official'];
    _common = json['common'];
  }
  String? _official;
  String? _common;
Ron copyWith({  String? official,
  String? common,
}) => Ron(  official: official ?? _official,
  common: common ?? _common,
);
  String? get official => _official;
  String? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['official'] = _official;
    map['common'] = _common;
    return map;
  }

}

/// png : "https://flagcdn.com/w320/md.png"
/// svg : "https://flagcdn.com/md.svg"
/// alt : "The flag of Moldova is composed of three equal vertical bands of blue, yellow and red, with the national coat of arms centered in the yellow band."

Flags flagsFromJson(String str) => Flags.fromJson(json.decode(str));
String flagsToJson(Flags data) => json.encode(data.toJson());
class Flags {
  Flags({
      String? png, 
      String? svg, 
      String? alt,}){
    _png = png;
    _svg = svg;
    _alt = alt;
}

  Flags.fromJson(dynamic json) {
    _png = json['png'];
    _svg = json['svg'];
    _alt = json['alt'];
  }
  String? _png;
  String? _svg;
  String? _alt;
Flags copyWith({  String? png,
  String? svg,
  String? alt,
}) => Flags(  png: png ?? _png,
  svg: svg ?? _svg,
  alt: alt ?? _alt,
);
  String? get png => _png;
  String? get svg => _svg;
  String? get alt => _alt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['png'] = _png;
    map['svg'] = _svg;
    map['alt'] = _alt;
    return map;
  }

}