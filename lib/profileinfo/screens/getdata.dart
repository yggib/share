// To parse this JSON data, do
//
//     final getdata = getdataFromJson(jsonString);

import 'dart:convert';

Getdata getdataFromJson(String str) => Getdata.fromJson(json.decode(str));

String getdataToJson(Getdata data) => json.encode(data.toJson());

class Getdata {
  Getdata({
    this.id,
    this.username,
    this.password,
    this.name,
    this.birthday,
    this.gender,
    this.position,
    this.description,
    this.descriptionHashtag,
    this.livingArea,
    this.email,
    this.phone,
    this.lineId,
    this.education,
    this.workExp,
    this.socialMedia,
  });

  String id;
  String username;
  String password;
  String name;
  String birthday;
  String gender;
  String position;
  String description;
  List<String> descriptionHashtag;
  String livingArea;
  String email;
  String phone;
  String lineId;
  List<Education> education;
  List<WorkExp> workExp;
  List<SocialMedia> socialMedia;

  factory Getdata.fromJson(Map<String, dynamic> json) => Getdata(
        id: json["_id"] == null ? null : json["_id"],
        username: json["username"] == null ? null : json["username"],
        password: json["password"] == null ? null : json["password"],
        name: json["name"] == null ? null : json["name"],
        birthday: json["birthday"] == null ? null : json["birthday"],
        gender: json["gender"] == null ? null : json["gender"],
        position: json["position"] == null ? null : json["position"],
        description: json["description"] == null ? null : json["description"],
        descriptionHashtag: json["description_hashtag"] == null
            ? null
            : List<String>.from(json["description_hashtag"].map((x) => x)),
        livingArea: json["living_area"] == null ? null : json["living_area"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        lineId: json["line_id"] == null ? null : json["line_id"],
        education: json["education"] == null
            ? null
            : List<Education>.from(
                json["education"].map((x) => Education.fromJson(x))),
        workExp: json["work_exp"] == null
            ? null
            : List<WorkExp>.from(
                json["work_exp"].map((x) => WorkExp.fromJson(x))),
        socialMedia: json["social_media"] == null
            ? null
            : List<SocialMedia>.from(
                json["social_media"].map((x) => SocialMedia.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "username": username == null ? null : username,
        "password": password == null ? null : password,
        "name": name == null ? null : name,
        "birthday": birthday == null ? null : birthday,
        "gender": gender == null ? null : gender,
        "position": position == null ? null : position,
        "description": description == null ? null : description,
        "description_hashtag": descriptionHashtag == null
            ? null
            : List<dynamic>.from(descriptionHashtag.map((x) => x)),
        "living_area": livingArea == null ? null : livingArea,
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "line_id": lineId == null ? null : lineId,
        "education": education == null
            ? null
            : List<dynamic>.from(education.map((x) => x.toJson())),
        "work_exp": workExp == null
            ? null
            : List<dynamic>.from(workExp.map((x) => x.toJson())),
        "social_media": socialMedia == null
            ? null
            : List<dynamic>.from(socialMedia.map((x) => x.toJson())),
      };
}

class Education {
  Education({
    this.level,
    this.name,
  });

  String level;
  String name;

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        level: json["level"] == null ? null : json["level"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "level": level == null ? null : level,
        "name": name == null ? null : name,
      };
}

class SocialMedia {
  SocialMedia({
    this.facebook,
    this.instagram,
    this.linkedin,
    this.youtube,
    this.twitter,
    this.tiktok,
    this.website,
  });

  String facebook;
  String instagram;
  String linkedin;
  String youtube;
  String twitter;
  String tiktok;
  String website;

  factory SocialMedia.fromJson(Map<String, dynamic> json) => SocialMedia(
        facebook: json["facebook"] == null ? null : json["facebook"],
        instagram: json["instagram"] == null ? null : json["instagram"],
        linkedin: json["linkedin"] == null ? null : json["linkedin"],
        youtube: json["youtube"] == null ? null : json["youtube"],
        twitter: json["twitter"] == null ? null : json["twitter"],
        tiktok: json["tiktok"] == null ? null : json["tiktok"],
        website: json["website"] == null ? null : json["website"],
      );

  Map<String, dynamic> toJson() => {
        "facebook": facebook == null ? null : facebook,
        "instagram": instagram == null ? null : instagram,
        "linkedin": linkedin == null ? null : linkedin,
        "youtube": youtube == null ? null : youtube,
        "twitter": twitter == null ? null : twitter,
        "tiktok": tiktok == null ? null : tiktok,
        "website": website == null ? null : website,
      };
}

class WorkExp {
  WorkExp({
    this.level,
    this.name,
    this.position,
    this.orgName,
  });

  String level;
  String name;
  String position;
  String orgName;

  factory WorkExp.fromJson(Map<String, dynamic> json) => WorkExp(
        level: json["level"] == null ? null : json["level"],
        name: json["name"] == null ? null : json["name"],
        position: json["position"] == null ? null : json["position"],
        orgName: json["org_name"] == null ? null : json["org_name"],
      );

  Map<String, dynamic> toJson() => {
        "level": level == null ? null : level,
        "name": name == null ? null : name,
        "position": position == null ? null : position,
        "org_name": orgName == null ? null : orgName,
      };
}
